/*********************************************************************************************************************
Copyright 2026-2035, Laboratorio de Microprocesadores
Facultad de Ciencias Exactas y Tecnologia
Universidad Nacional de Tucuman
http://www.microprocesadores.unt.edu.ar/

Copyright 2026-2035, Gonzalo Chaves <gonzaloechvs@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

SPDX-License-Identifier: MIT
*************************************************************************************************/

/** @file tareas.c
 ** @brief Implementación de las rutinas de tareas cooperativas y expropiativas de FreeRTOS.
 **/

/* === Headers files inclusions ================================================================ */

#include "tareas.h"
#include "placa.h"
#include "reloj.h"

/* === Macros definitions ====================================================================== */

/** Período en milisegundos para el refresco del multiplexado */
#define PERIODO_REFRESCO_MS 2

/** @brief Período de muestreo de la tarea del teclado en milisegundos. */
#define PERIODO_TECLADO_MS 50

/** @brief Cantidad de ciclos de muestreo para registrar una pulsación larga (3 segundos). */
#define TICKS_3_SEGUNDOS   (3000 / PERIODO_TECLADO_MS)

/* === Private data type declarations ========================================================== */

/* Limites para el reloj */
static const uint8_t LIMITE_MINUTOS[2] = {6, 0}; // Límite exclusivo 60
static const uint8_t LIMITE_HORAS[2]   = {2, 4}; // Límite exclusivo 24

/* === Private function declarations =========================================================== */

/* === Private variable definitions ============================================================ */

/** Referencia externa a la cola de eventos del teclado */
extern QueueHandle_t xColaTeclas;

volatile bool alarma_sonando = false;

/* === Public variable definition  ============================================================= */

static void CambiarModo(display_task_args_t * args, modo_reloj_t nuevo_modo) {
    args->modo = nuevo_modo;

    // Resetear efectos del display para configurarlos limpianente
    DisplayFlashDigits(args->display, 0, 3, 0); // Desactiva parpadeos
    DisplayClearDots(args->display, 0, 3);      // Apaga todos los puntos
    
    switch (nuevo_modo) {
    case MODO_SIN_AJUSTAR:
        DisplayFlashDigits(args->display, 0, 3, 100);
        DisplaySetDots(args->display, 1, 1);
        break;
    case MODO_NORMAL:
    // se setea desde TareaReloj
        break;
    case MODO_MINUTOS:
        DisplayFlashDigits(args->display, 2, 3, 100);
        break;
    case MODO_HORAS:
        DisplayFlashDigits(args->display, 0, 1, 100);
        break;
    case MODO_MINUTOS_ALARMA:
        DisplayFlashDigits(args->display, 2, 3, 100);
        DisplaySetDots(args->display, 0, 3);
        break;
    case MODO_HORAS_ALARMA:
        DisplayFlashDigits(args->display, 0, 1, 100);
        DisplaySetDots(args->display, 0, 3);
        break;        
    default:
        break;
    }
}

/**
 * @brief Incrementa un valor numérico representado en formato BCD de dos dígitos.
 * @param numero Arreglo de 2 bytes [decenas, unidades] a incrementar.
 * @param limite Arreglo de 2 bytes [decenas, unidades] que representa el límite superior exclusivo.
 */
void IncrementarBCD(uint8_t numero[2], const uint8_t limite[2]) {
    numero[1]++;
    if (numero[1] > 9) {
        numero[0]++;
        numero[1] = 0;
    }
    if((numero[1] == limite[1]) && (numero[0] == limite[0])) {
        numero[0] = 0;
        numero[1] = 0;
    }
}

/**
 * @brief Decrementa un valor numérico representado en formato BCD de dos dígitos.
 * @param numero Arreglo de 2 bytes [decenas, unidades] a decrementar.
 * @param limite Arreglo de 2 bytes [decenas, unidades] que define el valor máximo al desbordar por cero.
 */
void DecrementarBCD(uint8_t numero[2], const uint8_t limite[2]) {
    // Chequea si estamos en el mínimo (0, 0)
    if ((numero[0] == 0) && (numero[1] == 0)) {
        // Ir al máximo válido antes del límite
        if (limite[1] > 0) {
            numero[0] = limite[0];
            numero[1] = limite[1] - 1;
        } else {
            numero[0] = limite[0] - 1;
            numero[1] = 9;
        }
    } else {
        // Decrementar normalmente
        if (numero[1] == 0) {
            numero[0]--;
            numero[1] = 9;
        } else {
            numero[1]--;
        }
    }
}

void AlarmaCallback(void) {
    alarma_sonando = true;
}

/* === Private function definitions ============================================================ */

/* === Public function implementation ========================================================== */

void TareaDisplay(void * parametros) {
    display_task_args_t * args = (display_task_args_t *) parametros;
    TickType_t xLastWakeTime;

    xLastWakeTime = xTaskGetTickCount();

    while (true) {
        if (xSemaphoreTake(args->mutex, portMAX_DELAY) == pdTRUE) {
            DisplayRefresh(args->display);
            xSemaphoreGive(args->mutex);
        }
        
        vTaskDelayUntil(&xLastWakeTime, pdMS_TO_TICKS(PERIODO_REFRESCO_MS));
    }
}

/* Reemplaza o agrega tu TareaTeclado en la sección de implementaciones */
void TareaTeclado(void * parametros) {
    board_t placa = (board_t) parametros;

    uint16_t contador_f1 = 0;
    uint16_t contador_f2 = 0;
    uint16_t contador_500ms = 0;

    while (true) {
        /* --- TECLAS DE PULSACIÓN LARGA (F1 y F2) --- */
        if (DigitalInputGetState(placa->tecla_F1)) {
            contador_f1++;
            if (contador_f1 == TICKS_3_SEGUNDOS) {
                teclas_enum_t evento = TECLA_F1_LARGA;
                xQueueSend(xColaTeclas, &evento, 0);
            }
        } else {
            contador_f1 = 0; // Se soltó la tecla, reiniciamos el contador
        }
        if (DigitalInputGetState(placa->tecla_F2)) {
            contador_f2++;
            if (contador_f2 == TICKS_3_SEGUNDOS) {
                teclas_enum_t evento = TECLA_F2_LARGA;
                xQueueSend(xColaTeclas, &evento, 0);
            }
        } else {
            contador_f2 = 0; // Se soltó la tecla, reiniciamos el contador
        }

        /* --- TECLAS DE PULSACIÓN CORTA --- */
        if (DigitalInputHasActivated(placa->tecla_F3)) {
            teclas_enum_t evento = TECLA_F3;
            xQueueSend(xColaTeclas, &evento, 0);
        }
        if (DigitalInputHasActivated(placa->tecla_F4)) {
            teclas_enum_t evento = TECLA_F4;
            xQueueSend(xColaTeclas, &evento, 0);
        }
        if (DigitalInputHasActivated(placa->tecla_aceptar)) {
            teclas_enum_t evento = TECLA_ACEPTAR;
            xQueueSend(xColaTeclas, &evento, 0);
        }
        if (DigitalInputHasActivated(placa->tecla_cancelar)) {
            teclas_enum_t evento = TECLA_CANCELAR;
            xQueueSend(xColaTeclas, &evento, 0);
        }

        /* --- GENERADOR DE BASE DE TIEMPO (500 ms) --- */
        contador_500ms++;
        if (contador_500ms >= 10) { // 10 ciclos de 50ms = 500ms
            teclas_enum_t evento = EVENTO_TICK_500MS;
            xQueueSend(xColaTeclas, &evento, 0);
            contador_500ms = 0;
        }
        // Suspensión temporal: cede el procesador a otras tareas durante 50ms
        vTaskDelay(pdMS_TO_TICKS(PERIODO_TECLADO_MS));
    }
}

void TareaReloj(void * parametros) {
    display_task_args_t * args = (display_task_args_t *) parametros;
    teclas_enum_t evento_recibido; // tambien tomamos el evento de los 500ms

    board_t placa = (board_t) args->placa_ptr;
    extern clock_t reloj;
    bool alarma_habilitada = false;
    bool alarma_configurada = false;
    bool estado_punto_segundos = false;
    bool medio_segundo = false;
    uint16_t contador_AFK = 0;

    // Hora temporal(formato BCD: {hora_d, hora_u, min_d, min_u})
    uint8_t hora_bcd[4] = {0, 0, 0, 0};
    uint8_t hora_alarma_bcd[4] = {0, 0, 0, 0};

    // --- CONFIGURACIÓN INICIAL ---
    xSemaphoreTake(args->mutex, portMAX_DELAY);
    DisplayWriteBCD(args->display, hora_bcd, 4);
    CambiarModo(args, MODO_SIN_AJUSTAR);
    xSemaphoreGive(args->mutex);

    while (true) {
        // Dormimos la tarea hasta que el usuario presione algo
        if (xQueueReceive(xColaTeclas, &evento_recibido, portMAX_DELAY) == pdTRUE) {

            // EVENTO DE TIEMPO (Ocurre matemáticamente cada 500ms)
            if (evento_recibido == EVENTO_TICK_500MS) {
                medio_segundo = !medio_segundo;
                if (args->modo != MODO_SIN_AJUSTAR && medio_segundo) {
                    for (int i = 0; i < 60; i++) {
                        RelojNewTick(reloj);
                    }
                }
                if (alarma_sonando) {
                    DigitalOutputToggle(placa->led_rgb_azul); // Hace bip intermitente
                }
                
                if (args->modo != MODO_NORMAL && args->modo != MODO_SIN_AJUSTAR) {
                    contador_AFK++;
                    if (contador_AFK >= 60) { // 60 ciclos de 500ms = 30 segundos
                        xSemaphoreTake(args->mutex, portMAX_DELAY);
                        CambiarModo(args, MODO_NORMAL);
                        DisplayWriteBCD(args->display, hora_bcd, 4);
                        xSemaphoreGive(args->mutex);
                        contador_AFK = 0;
                    }
                }
                if (args->modo == MODO_NORMAL) {
                    xSemaphoreTake(args->mutex, portMAX_DELAY);
                    if (medio_segundo) {
                        hora_t tiempo_actual;
                        RelojGetCurrentTime(reloj, tiempo_actual);
                        hora_bcd[0] = tiempo_actual[0];
                        hora_bcd[1] = tiempo_actual[1];
                        hora_bcd[2] = tiempo_actual[2];
                        hora_bcd[3] = tiempo_actual[3];
                        DisplayWriteBCD(args->display, hora_bcd, 4);
                    }
                    estado_punto_segundos = !estado_punto_segundos;
                    if (estado_punto_segundos) {
                        DisplaySetDots(args->display, 1, 1);
                    } else {
                        DisplayClearDots(args->display, 1, 1);
                    }

                    if (alarma_habilitada) DisplaySetDots(args->display, 3, 3);
                    else DisplayClearDots(args->display, 3, 3);
                    xSemaphoreGive(args->mutex);
                }
            }
            // EVENTO DE TECLADO (El usuario presionó un botón físico)
            else {
                contador_AFK = 0; // Si el usuario toca un botón, reseteamos el timeout AFK

                xSemaphoreTake(args->mutex, portMAX_DELAY);
                if (alarma_sonando) {
                    if (evento_recibido == TECLA_ACEPTAR) {
                        RelojSnoozeAlarm(reloj, 300); // Pospone por 5 minutos (300 segundos)
                        alarma_sonando = false;
                        DigitalOutputDeactivate(placa->led_rgb_azul); // Apaga el alarma de inmediato
                        DisplayWriteBCD(args->display, hora_bcd, 4);
                    }
                    else if (evento_recibido == TECLA_CANCELAR) {
                        RelojCancelAlarm(reloj); // Cancela hasta el próximo día
                        alarma_sonando = false;
                        DigitalOutputDeactivate(placa->led_rgb_azul); // Apaga la alarma de inmediato
                        DisplayWriteBCD(args->display, hora_bcd, 4);
                    }
                } 
                else {
                    // EVALUAMOS EL ESTADO ACTUAL
                    switch (args->modo) {
                        case MODO_SIN_AJUSTAR:
                            if(evento_recibido == TECLA_F1_LARGA) {
                                CambiarModo(args, MODO_MINUTOS);
                                DisplayWriteBCD(args->display, hora_bcd, 4);
                            }
                            break;
                        case MODO_NORMAL:
                            if (evento_recibido == TECLA_F1_LARGA) {
                                CambiarModo(args, MODO_MINUTOS);
                                DisplayWriteBCD(args->display, hora_bcd, 4);
                            }
                            else if (evento_recibido == TECLA_F2_LARGA) {
                                CambiarModo(args, MODO_MINUTOS_ALARMA);
                                DisplayWriteBCD(args->display, hora_alarma_bcd, 4);
                            }
                            else if (evento_recibido == TECLA_ACEPTAR) {
                                if (alarma_configurada) {
                                    RelojEnableAlarm(reloj);
                                    alarma_habilitada = true;
                                }
                            }
                            else if (evento_recibido == TECLA_CANCELAR) {
                                RelojDisableAlarm(reloj);
                                alarma_habilitada = false;
                            }
                            break;
                        case MODO_MINUTOS:
                            if (evento_recibido == TECLA_ACEPTAR) {
                                CambiarModo(args, MODO_HORAS);
                            }
                            else if (evento_recibido == TECLA_F4) {
                                IncrementarBCD(&hora_bcd[2], LIMITE_MINUTOS);
                                DisplayWriteBCD(args->display, hora_bcd, 4);
                            }
                            else if (evento_recibido == TECLA_F3) {
                                DecrementarBCD(&hora_bcd[2], LIMITE_MINUTOS);
                                DisplayWriteBCD(args->display, hora_bcd, 4);
                            }
                            else if (evento_recibido == TECLA_CANCELAR) {
                                CambiarModo(args, MODO_NORMAL);
                                DisplayWriteBCD(args->display, hora_bcd, 4);
                            }
                            break;
                        case MODO_HORAS:
                            if (evento_recibido == TECLA_F4) {
                                IncrementarBCD(&hora_bcd[0], LIMITE_HORAS);
                                DisplayWriteBCD(args->display, hora_bcd, 4);
                            }
                            else if (evento_recibido == TECLA_F3) {
                                DecrementarBCD(&hora_bcd[0], LIMITE_HORAS);
                                DisplayWriteBCD(args->display, hora_bcd, 4);
                            }
                            else if (evento_recibido == TECLA_ACEPTAR) {
                                hora_t nueva_hora = {hora_bcd[0], hora_bcd[1], hora_bcd[2], hora_bcd[3]};
                                RelojSetupCurrentTime(reloj, nueva_hora);
                                CambiarModo(args, MODO_NORMAL);
                                DisplayWriteBCD(args->display, hora_bcd, 4);
                            }
                            else if (evento_recibido == TECLA_CANCELAR) {
                                CambiarModo(args, MODO_NORMAL);
                                DisplayWriteBCD(args->display, hora_bcd, 4);
                            }
                            break;
                        case MODO_MINUTOS_ALARMA:
                            if (evento_recibido == TECLA_ACEPTAR) {
                                CambiarModo(args, MODO_HORAS_ALARMA);
                            }
                            else if (evento_recibido == TECLA_F4) {
                                IncrementarBCD(&hora_alarma_bcd[2], LIMITE_MINUTOS);
                                DisplayWriteBCD(args->display, hora_alarma_bcd, 4);
                            }
                            else if (evento_recibido == TECLA_F3) {
                                DecrementarBCD(&hora_alarma_bcd[2], LIMITE_MINUTOS);
                                DisplayWriteBCD(args->display, hora_alarma_bcd, 4);
                            }
                            else if (evento_recibido == TECLA_CANCELAR) {
                                CambiarModo(args, MODO_NORMAL);
                                DisplayWriteBCD(args->display, hora_bcd, 4);
                            }
                            break;
                        case MODO_HORAS_ALARMA:
                            if (evento_recibido == TECLA_F4) {
                                IncrementarBCD(&hora_alarma_bcd[0], LIMITE_HORAS);
                                DisplayWriteBCD(args->display, hora_alarma_bcd, 4);
                            }
                            else if (evento_recibido == TECLA_F3) {
                                DecrementarBCD(&hora_alarma_bcd[0], LIMITE_HORAS);
                                DisplayWriteBCD(args->display, hora_alarma_bcd, 4);
                            }
                            else if (evento_recibido == TECLA_ACEPTAR) {
                                hora_t nueva_alarma = {hora_alarma_bcd[0], hora_alarma_bcd[1], hora_alarma_bcd[2], hora_alarma_bcd[3], 0, 0};
                                RelojSetupAlarm(reloj, nueva_alarma);

                                alarma_configurada = true;
                                alarma_habilitada = true;

                                CambiarModo(args, MODO_NORMAL);
                                DisplayWriteBCD(args->display, hora_bcd, 4);
                            }
                            else if (evento_recibido == TECLA_CANCELAR) {
                                CambiarModo(args, MODO_NORMAL);
                                DisplayWriteBCD(args->display, hora_bcd, 4);
                            }
                            break;
                    }
                    if (args->modo == MODO_NORMAL) {
                        if (alarma_habilitada) DisplaySetDots(args->display, 3, 3);
                        else DisplayClearDots(args->display, 3, 3);
                    }
                }
                xSemaphoreGive(args->mutex);
            }
        }
    }
}

/* === End of documentation ==================================================================== */