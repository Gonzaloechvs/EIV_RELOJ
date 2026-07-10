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

/* === Private data type declarations ========================================================== */

/* === Private function declarations =========================================================== */

/* === Private variable definitions ============================================================ */

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

/* === End of documentation ==================================================================== */