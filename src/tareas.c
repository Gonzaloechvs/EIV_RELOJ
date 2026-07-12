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

/* === Private function declarations =========================================================== */

/* === Private variable definitions ============================================================ */

/** Referencia externa a la cola de eventos del teclado */
extern QueueHandle_t xColaTeclas;

/* === Public variable definition  ============================================================= */

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

void TareaPrueba(void * parametros) {
    display_task_args_t * args = (display_task_args_t *) parametros;

    teclas_enum_t tecla_recibida;

    // Variables locales, asi no se necesita el mutex
    uint8_t hora_bcd[4] = {1, 2, 3, 4};
    uint16_t parpadeo = 0;

    while (true) {
        // La tarea se bloquea aquí hasta que llegue un dato a la cola
        if (xQueueReceive(xColaTeclas, &tecla_recibida, portMAX_DELAY) == pdTRUE) {
            // Se recibe la cola de los eventos de las teclas
            // Se pide el Mutex para no pisar la TareaDisplay
            if (xSemaphoreTake(args->mutex, portMAX_DELAY) == pdTRUE) {
                switch (tecla_recibida) {
                    case TECLA_ACEPTAR:
                        // Conmuta los 4 puntos (del índice 0 al 3)
                        DisplayToggleDots(args->display, 0, 3);
                        break;
                    case TECLA_CANCELAR:
                        // Alterna entre apagar el parpadeo (0) y encenderlo
                        parpadeo = (parpadeo == 0) ? 50 : 0;
                        DisplayFlashDigits(args->display, 0, 3, parpadeo);
                        break;
                    case TECLA_F4: // F4 incrementa el dígito 0
                        hora_bcd[0] = (hora_bcd[0] >= 9) ? 0 : hora_bcd[0] + 1;
                        DisplayWriteBCD(args->display, hora_bcd, 4);
                        break;
                    case TECLA_F3: // F3 incrementa el dígito 1
                        hora_bcd[1] = (hora_bcd[1] >= 9) ? 0 : hora_bcd[1] + 1;
                        DisplayWriteBCD(args->display, hora_bcd, 4);
                        break;
                    case TECLA_F2: // F2 incrementa el dígito 2
                        hora_bcd[2] = (hora_bcd[2] >= 9) ? 0 : hora_bcd[2] + 1;
                        DisplayWriteBCD(args->display, hora_bcd, 4);
                        break;
                    case TECLA_F1: // F1 incrementa el dígito 3
                        hora_bcd[3] = (hora_bcd[3] >= 9) ? 0 : hora_bcd[3] + 1;
                        DisplayWriteBCD(args->display, hora_bcd, 4);
                        break;
                    default:
                        break;
                }
                // Soltamos el mutex de la pantalla
                xSemaphoreGive(args->mutex);
            }
        }
    }
}

/* === End of documentation ==================================================================== */