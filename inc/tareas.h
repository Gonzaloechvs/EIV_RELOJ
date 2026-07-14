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

#ifndef TAREAS_H_
#define TAREAS_H_

/** @file tareas.h
 ** @brief Definiciones y estructuras para las tareas de FreeRTOS del reloj digital.
 **/

/* === Headers files inclusions ==================================================================================== */
#include <stdint.h>
#include <stdbool.h>

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "queue.h"

#include "screen.h"

/* === Header for C++ compatibility ================================================================================ */

#ifdef __cplusplus
extern "C" {
#endif

/* === Public macros definitions =================================================================================== */

/* === Public data type declarations =============================================================================== */

/** @brief Enumeración de los eventos de teclado generados por la interfaz */
typedef enum {
    TECLA_F1,
    TECLA_F1_LARGA,
    TECLA_F2,
    TECLA_F2_LARGA,
    TECLA_F3,
    TECLA_F4,
    TECLA_ACEPTAR,
    TECLA_CANCELAR
} teclas_enum_t;

/** @brief Enumeración de los estados o modos de la Máquina de Estados */
typedef enum {
    MODO_SIN_AJUSTAR,
    MODO_NORMAL,
    MODO_MINUTOS,
    MODO_HORAS,
    MODO_MINUTOS_ALARMA,
    MODO_HORAS_ALARMA
} modo_reloj_t;

/** @brief Estructura para pasar los argumentos a la tarea del display */
typedef struct {
    display_t display;
    SemaphoreHandle_t mutex;
    modo_reloj_t modo;
} display_task_args_t;

/* === Public variable declarations ================================================================================ */

/* === Public function declarations ================================================================================ */

/**
 * @brief Tarea de alta prioridad encargada del multiplexado de la pantalla de 7 segmentos.
 * @param parametros Puntero a la estructura display_task_args_t.
 */
void TareaDisplay(void * parametros);

/**
 * @brief Tarea encargada de escanear los botones físicos y aplicar el antirrebote.
 * @param parametros Puntero al descriptor de hardware board_t.
 */
void TareaTeclado(void * parametros);

/**
 * @brief Tarea encargada del manejo de tiempo y maquina de estados del reloj.
 * @param parametros Puntero a la estructura display_task_args_t.
 */
void TareaReloj(void * parametros);

/* === End of conditional blocks =================================================================================== */

#ifdef __cplusplus
}
#endif

#endif /* TAREAS_H_ */