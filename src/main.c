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

/** @file main.c
 ** @brief Programa principal e inicialización del sistema operativo FreeRTOS.
 **/

/* === Headers files inclusions ================================================================ */

#include <stdint.h>
#include <stdbool.h>

/* Librerías del RTOS siempre antes que las de la aplicación */
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "queue.h"
#include "timers.h"

/* Librerías de la capa de abstracción y de tareas */
#include "placa.h"
#include "tareas.h"
#include "reloj.h"

/* === Macros definitions ====================================================================== */

/** Cantidad máxima de eventos de tecla que la cola puede almacenar sin procesar */
#define EVENTOS_TECLADO_MAX 10

/* === Private data type declarations ========================================================== */

/* === Private function declarations =========================================================== */

/* === Private variable definitions ============================================================ */

/** Argumentos estáticos para pasar a la tarea de display sin perder alcance (scope) */
static display_task_args_t args_display;

/* === Public variable definition  ============================================================= */

/** * Cola pública de eventos de teclado.
 * Se define aquí pero se utiliza con 'extern' dentro de tareas.c
 */
QueueHandle_t xColaTeclas = NULL;

clock_t reloj;

/* === Private function definitions ============================================================ */

// void AlarmaCallback(void) {

// }

/* === Public function implementation ========================================================== */

int main(void) {
    /* 1. Inicialización de la placa y periféricos */
    board_t placa = BoardCreate();
    
    reloj = RelojCreate(1, AlarmaCallback);

    /* Sincronización del reloj interno para evitar que el PLL altere los Ticks de FreeRTOS */
    SystemCoreClockUpdate();

    /* 2. Creación de Objetos de Comunicación y Sincronización (IPC) */
    args_display.mutex = xSemaphoreCreateMutex();
    args_display.display = placa->pantalla;
    args_display.modo = MODO_SIN_AJUSTAR;
    args_display.placa_ptr = (void *) placa;
    
    // CREAR LA COLA: Espacio para 10 eventos de tipo 'teclas_enum_t'
    xColaTeclas = xQueueCreate(10, sizeof(teclas_enum_t));

    /* 3. Registro de las Tareas (Solo si los objetos IPC se crearon con éxito en memoria) */
    if ((args_display.mutex != NULL) && (xColaTeclas != NULL)) {
        //Si no se tomo el mutex y si hay una cola de las teclas
        
        TimerHandle_t timer_reloj = xTimerCreate(
            "Timer_500ms",              // Nombre para depuración
            pdMS_TO_TICKS(500),         // Período exacto de 500 ms
            pdTRUE,                     // Auto-Reload: se reinicia infinitamente
            (void *) 0,                 // ID del timer (no lo necesitamos)
            TimerTickCallback           // Función a ejecutar
        );

        if (timer_reloj != NULL) {
            xTimerStart(timer_reloj, 0); // Arrancamos el timer (0 = sin bloquear)
        }

        /* Tarea de Display: Prioridad Máxima (configMAX_PRIORITIES - 1) */
        // Este es la maxima prioridad ya que se debe tener en cuenta para el manejo del display
        xTaskCreate(
            TareaDisplay,
            "Display",
            configMINIMAL_STACK_SIZE,
            (void *) &args_display,
            (configMAX_PRIORITIES - 1),
            NULL
        );
        /* Tarea del Teclado: Prioridad Media-Alta (configMAX_PRIORITIES - 2) */
        // Segunda prioridad, solo si es que se preciono una tecla se atiende
        // Siempre tendra prioridad el display sobre el teclado
        xTaskCreate(
            TareaTeclado,
            "Teclado",
            configMINIMAL_STACK_SIZE,
            (void *) placa,
            (configMAX_PRIORITIES - 2), // Prioridad un poco menor que el display
            NULL
        );
        /* Tarea del Reloj: Prioridad Media (configMAX_PRIORITIES - 2) */
        // Le pasamos args_display porque necesita usar el display y el mutex
        xTaskCreate(
            TareaReloj,
            "LogicaPrueba",
            configMINIMAL_STACK_SIZE,
            (void *) &args_display,
            (configMAX_PRIORITIES - 3), // Prioridad baja
            NULL
        );
        /* 4. Lanzamiento del Planificador Expropiativo */
        vTaskStartScheduler();
    }

    /* Bucle infinito de seguridad. El hardware nunca debería llegar a esta línea. */
    for (;;) {
        // Fallo crítico: No hubo suficiente memoria heap para iniciar el scheduler
    }
}

/* === End of documentation ==================================================================== */