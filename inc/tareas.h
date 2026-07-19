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
#include "timers.h"

#include "screen.h"
#include "placa.h"

/* === Header for C++ compatibility ================================================================================ */

#ifdef __cplusplus
extern "C" {
#endif

/* === Public macros definitions =================================================================================== */

/* === Public data type declarations =============================================================================== */

/** @brief Enumeración de los eventos de teclado generados por la interfaz */
typedef enum {
    TECLA_F1,           /**< Pulsación corta de la tecla F1 */
    TECLA_F1_LARGA,     /**< Pulsación mantenida (>3 seg) de la tecla F1 */
    TECLA_F2,           /**< Pulsación corta de la tecla F2 */
    TECLA_F2_LARGA,     /**< Pulsación mantenida (>3 seg) de la tecla F2 */
    TECLA_F3,           /**< Pulsación corta para decrementar valores */
    TECLA_F4,           /**< Pulsación corta para incrementar valores */
    TECLA_ACEPTAR,      /**< Confirma cambios o pospone la alarma (Snooze) */
    TECLA_CANCELAR,     /**< Cancela edición o apaga la alarma hasta el día siguiente */
    EVENTO_TICK_500MS   /**< Evento temporal generado por el Software Timer */
} teclas_enum_t;

/** @brief Enumeración de los estados o modos de la Máquina de Estados */
typedef enum {
    MODO_SIN_AJUSTAR,       /**< Estado inicial, reloj desconfigurado parpadeando */
    MODO_NORMAL,            /**< Funcionamiento estándar mostrando la hora actual */
    MODO_MINUTOS,           /**< Modo de edición de los minutos de la hora actual */
    MODO_HORAS,             /**< Modo de edición de las horas de la hora actual */
    MODO_MINUTOS_ALARMA,    /**< Modo de edición de los minutos de la alarma */
    MODO_HORAS_ALARMA       /**< Modo de edición de las horas de la alarma */
} modo_reloj_t;

/** @brief Estructura para pasar los argumentos a la tarea del display */
typedef struct {
    display_t display;       /**< Puntero al descriptor del hardware de la pantalla */
    SemaphoreHandle_t mutex; /**< Mutex para proteger la escritura concurrente en la pantalla */
    modo_reloj_t modo;       /**< Modo actual de la máquina de estados del sistema */
    void * placa_ptr;        /**< Puntero genérico a la placa para acceder a actuadores (ej. buzzer) */
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

/**
 * @brief Callback disparado por la lógica del reloj al coincidir el tiempo con la alarma.
 */
extern void AlarmaCallback(void);

/**
 * @brief Callback del Software Timer de FreeRTOS (500 ms).
 * @param xTimer Handle del timer que originó la llamada.
 */
void TimerTickCallback(TimerHandle_t xTimer);

/* === End of conditional blocks =================================================================================== */

#ifdef __cplusplus
}
#endif

#endif /* TAREAS_H_ */