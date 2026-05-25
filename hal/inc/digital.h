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

#ifndef DIGITAL_H_
#define DIGITAL_H_

/** @file digital.h
 ** @brief Definición de tipos y funciones para manejo de señales digitales
 **/

/* === Headers files inclusions ==================================================================================== */

#include <stdint.h>
#include <stdbool.h>

/* === Header for C++ compatibility ================================================================================ */

#ifdef __cplusplus
extern "C" {
#endif

/* === Public macros definitions =================================================================================== */

/* === Public data type declarations =============================================================================== */

/**
 * @brief Tipo de dato opaco para manejar una salida digital.
 */
typedef struct digital_output_s * digital_output_t;

/**
 * @brief Tipo de dato opaco para manejar una entrada digital.
 */
typedef struct digital_input_s * digital_input_t;

/* === Public variable declarations ================================================================================ */

/* === Public function declarations ================================================================================ */

/**
 * @brief Crea e inicializa un objeto de salida digital.
 * * @param puerto Número de puerto del microcontrolador.
 * @param terminal Número de pin (terminal) dentro del puerto.
 * @param estado_invertido `true` si la lógica del pin es invertida (activo en bajo), `false` si es normal.
 * * @return digital_output_t Puntero al objeto creado o NULL si no hay memoria disponible.
 */
digital_output_t DigitalOutputCreate(uint32_t puerto, uint8_t terminal, bool estado_invertido);

/**
 * @brief Activa una salida digital (enciende el pin lógico).
 * * @param self Puntero al objeto de la salida digital.
 */
void DigitalOutputActivate(digital_output_t self);

/**
 * @brief Desactiva una salida digital (apaga el pin lógico).
 * * @param self Puntero al objeto de la salida digital.
 */
void DigitalOutputDeactivate(digital_output_t self);

/**
 * @brief Invierte (toggle) el estado actual de la salida digital.
 * * @param self Puntero al objeto de la salida digital.
 */
void DigitalOutputToggle(digital_output_t self);

/**
 * @brief Consulta el estado físico actual de una salida digital.
 * * @param self Puntero al objeto de la salida digital.
 * * @return true si la salida está lógicamente activa, false en caso contrario.
 */
bool DigitalOutputGetState(digital_output_t self);

/**
 * @brief Crea e inicializa un objeto de entrada digital.
 * * @param puerto Número de puerto del microcontrolador.
 * @param terminal Número de pin (terminal) dentro del puerto.
 * @param estado_invertido `true` si la lógica de entrada es invertida (ej. resistencia pull-up), `false` si es normal.
 * * @return digital_input_t Puntero al objeto creado o NULL si no hay memoria.
 */
digital_input_t DigitalInputCreate(uint32_t puerto, uint8_t terminal, bool estado_invertido);

/**
 * @brief Obtiene el estado lógico actual de una entrada digital.
 * * @param self Puntero al objeto de la entrada digital.
 * * @return true si la entrada está activa, false en caso contrario.
 */
bool DigitalInputGetState(digital_input_t self);

/**
 * @brief Verifica si el estado de la entrada ha cambiado desde la última consulta.
 * * @note Esta función realiza una "lectura destructiva". Al llamarla, el estado histórico
 * se actualiza, por lo que llamadas consecutivas a funciones de flanco no funcionarán como se espera.
 * * @param self Puntero al objeto de la entrada digital.
 * * @return true si hubo un cambio de estado, false si se mantiene igual.
 */
bool DigitalInputHasChanged(digital_input_t self);

/**
 * @brief Verifica si la entrada ha pasado de estado inactivo a activo (flanco ascendente).
 * * @note Esta función realiza una "lectura destructiva" del estado histórico.
 * * @param self Puntero al objeto de la entrada digital.
 * * @return true si se detectó una activación, false en caso contrario.
 */
bool DigitalInputHasActivated(digital_input_t self);

/**
 * @brief Verifica si la entrada ha pasado de estado activo a inactivo (flanco descendente).
 * * @note Esta función realiza una "lectura destructiva" del estado histórico.
 * * @param self Puntero al objeto de la entrada digital.
 * * @return true si se detectó una desactivación, false en caso contrario.
 */
bool DigitalInputHasDeactivated(digital_input_t self);

/* === End of conditional blocks =================================================================================== */

#ifdef __cplusplus
}
#endif

#endif /* DIGITAL_H_ */
