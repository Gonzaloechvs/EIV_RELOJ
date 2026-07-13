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

/* === Macros definitions ====================================================================== */

/** Período en milisegundos para el refresco del multiplexado */
#define PERIODO_REFRESCO_MS 2

/** Tiempo de espera en milisegundos para filtrar el rebote mecánico de teclas */
#define TIEMPO_ANTIRREBOTE_MS 50

/* === Private data type declarations ========================================================== */

/* Limites para el reloj */
static const uint8_t LIMITE_MINUTOS[2] = {6, 0}; // Límite exclusivo 60
static const uint8_t LIMITE_HORAS[2]   = {2, 4}; // Límite exclusivo 24

/* === Private function declarations =========================================================== */

/* === Private variable definitions ============================================================ */

/** Referencia externa a la cola de eventos del teclado */
extern QueueHandle_t xColaTeclas;

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
        DisplayFlashDigits(args->display, 0, 0, 0);
        DisplayClearDots(args->display, 0, 3);
        break;
    case MODO_MINUTOS:
        DisplayFlashDigits(args->display, 2, 3, 100);
        DisplayClearDots(args->display, 0, 3);
        break;
    case MODO_HORAS:
        DisplayFlashDigits(args->display, 0, 1, 100);
        DisplayClearDots(args->display, 0, 3);
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
    teclas_enum_t tecla_presionada;

    while (true) {
        tecla_presionada = TECLA_NINGUNA;

        /* --- Lectura de la Tecla ACEPTAR --- */
        if (DigitalInputGetState(placa->tecla_aceptar)) {
            vTaskDelay(pdMS_TO_TICKS(TIEMPO_ANTIRREBOTE_MS));
            if (DigitalInputGetState(placa->tecla_aceptar)) {
                tecla_presionada = TECLA_ACEPTAR;
                while(DigitalInputGetState(placa->tecla_aceptar)) {
                    vTaskDelay(pdMS_TO_TICKS(TIEMPO_ANTIRREBOTE_MS));
                }
            }
        }
        /* --- Lectura de la Tecla CANCELAR --- */
        else if (DigitalInputGetState(placa->tecla_cancelar)) {
            vTaskDelay(pdMS_TO_TICKS(TIEMPO_ANTIRREBOTE_MS));
            if (DigitalInputGetState(placa->tecla_cancelar)) {
                tecla_presionada = TECLA_CANCELAR;
                while(DigitalInputGetState(placa->tecla_cancelar)) {
                    vTaskDelay(pdMS_TO_TICKS(TIEMPO_ANTIRREBOTE_MS));
                }
            }
        }
        /* --- Lectura de la Tecla F1 --- */
        else if (DigitalInputGetState(placa->tecla_F1)) {
            vTaskDelay(pdMS_TO_TICKS(TIEMPO_ANTIRREBOTE_MS));
            if (DigitalInputGetState(placa->tecla_F1)) {
                tecla_presionada = TECLA_F1;
                while(DigitalInputGetState(placa->tecla_F1)) {
                    vTaskDelay(pdMS_TO_TICKS(TIEMPO_ANTIRREBOTE_MS));
                }
            }
        }
        /* --- Lectura de la Tecla F2 --- */
        else if (DigitalInputGetState(placa->tecla_F2)) {
            vTaskDelay(pdMS_TO_TICKS(TIEMPO_ANTIRREBOTE_MS));
            if (DigitalInputGetState(placa->tecla_F2)) {
                tecla_presionada = TECLA_F2;
                while(DigitalInputGetState(placa->tecla_F2)) {
                    vTaskDelay(pdMS_TO_TICKS(TIEMPO_ANTIRREBOTE_MS));
                }
            }
        }
        /* --- Lectura de la Tecla F3 --- */
        else if (DigitalInputGetState(placa->tecla_F3)) {
            vTaskDelay(pdMS_TO_TICKS(TIEMPO_ANTIRREBOTE_MS));
            if (DigitalInputGetState(placa->tecla_F3)) {
                tecla_presionada = TECLA_F3;
                while(DigitalInputGetState(placa->tecla_F3)) {
                    vTaskDelay(pdMS_TO_TICKS(TIEMPO_ANTIRREBOTE_MS));
                }
            }
        }
        /* --- Lectura de la Tecla F4 --- */
        else if (DigitalInputGetState(placa->tecla_F4)) {
            vTaskDelay(pdMS_TO_TICKS(TIEMPO_ANTIRREBOTE_MS));
            if (DigitalInputGetState(placa->tecla_F4)) {
                tecla_presionada = TECLA_F4;
                while(DigitalInputGetState(placa->tecla_F4)) {
                    vTaskDelay(pdMS_TO_TICKS(TIEMPO_ANTIRREBOTE_MS));
                }
            }
        }

        /* Si se detectó alguna tecla, la metemos en la cola de comunicación */
        if (tecla_presionada != TECLA_NINGUNA) {
            xQueueSend(xColaTeclas, &tecla_presionada, 0);
        }

        /* Descanso para no asfixiar el scheduler si no se presiona nada */
        vTaskDelay(pdMS_TO_TICKS(20));
    }
}

void TareaReloj(void * parametros) {
    display_task_args_t * args = (display_task_args_t *) parametros;
    teclas_enum_t tecla_recibida;

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
        if (xQueueReceive(xColaTeclas, &tecla_recibida, portMAX_DELAY) == pdTRUE) {

            xSemaphoreTake(args->mutex, portMAX_DELAY);
            // EVALUAMOS EL ESTADO ACTUAL
            switch (args->modo) {
                case MODO_SIN_AJUSTAR:
                case MODO_NORMAL:
                    if (tecla_recibida == TECLA_F1) {
                        CambiarModo(args, MODO_MINUTOS);
                        DisplayWriteBCD(args->display, hora_bcd, 4);
                    }
                    if (tecla_recibida == TECLA_F2) {
                        CambiarModo(args, MODO_MINUTOS_ALARMA);
                        DisplayWriteBCD(args->display, hora_alarma_bcd, 4);
                    }
                    break;
                case MODO_MINUTOS:
                    if (tecla_recibida == TECLA_ACEPTAR) {
                        CambiarModo(args, MODO_HORAS);
                    }
                    else if (tecla_recibida == TECLA_F4) {
                        IncrementarBCD(&hora_bcd[2], LIMITE_MINUTOS);
                        DisplayWriteBCD(args->display, hora_bcd, 4);
                    }
                    else if (tecla_recibida == TECLA_F3) {
                        DecrementarBCD(&hora_bcd[2], LIMITE_MINUTOS);
                        DisplayWriteBCD(args->display, hora_bcd, 4);
                    }
                    break;
                case MODO_HORAS:
                    if (tecla_recibida == TECLA_F4) {
                        IncrementarBCD(&hora_bcd[0], LIMITE_HORAS);
                        DisplayWriteBCD(args->display, hora_bcd, 4);
                    }
                    else if (tecla_recibida == TECLA_F3) {
                        DecrementarBCD(&hora_bcd[0], LIMITE_HORAS);
                        DisplayWriteBCD(args->display, hora_bcd, 4);
                    }
                    else if (tecla_recibida == TECLA_ACEPTAR || tecla_recibida == TECLA_CANCELAR) {
                        CambiarModo(args, MODO_NORMAL);
                        DisplayWriteBCD(args->display, hora_bcd, 4);
                    }
                    break;
                case MODO_MINUTOS_ALARMA:
                    if (tecla_recibida == TECLA_ACEPTAR) {
                        CambiarModo(args, MODO_HORAS_ALARMA);
                    }
                    else if (tecla_recibida == TECLA_F4) {
                        IncrementarBCD(&hora_alarma_bcd[2], LIMITE_MINUTOS);
                        DisplayWriteBCD(args->display, hora_alarma_bcd, 4);
                    }
                    else if (tecla_recibida == TECLA_F3) {
                        DecrementarBCD(&hora_alarma_bcd[2], LIMITE_MINUTOS);
                        DisplayWriteBCD(args->display, hora_alarma_bcd, 4);
                    }
                    break;
                case MODO_HORAS_ALARMA:
                    if (tecla_recibida == TECLA_F4) {
                        IncrementarBCD(&hora_alarma_bcd[0], LIMITE_HORAS);
                        DisplayWriteBCD(args->display, hora_alarma_bcd, 4);
                    }
                    else if (tecla_recibida == TECLA_F3) {
                        DecrementarBCD(&hora_alarma_bcd[0], LIMITE_HORAS);
                        DisplayWriteBCD(args->display, hora_alarma_bcd, 4);
                    }
                    else if (tecla_recibida == TECLA_ACEPTAR || tecla_recibida == TECLA_CANCELAR) {
                        CambiarModo(args, MODO_NORMAL);
                        DisplayWriteBCD(args->display, hora_bcd, 4);
                    }
                    break;
            }
            xSemaphoreGive(args->mutex);
        }
    }
}

/* === End of documentation ==================================================================== */