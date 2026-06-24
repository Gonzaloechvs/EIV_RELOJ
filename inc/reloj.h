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

#ifndef RELOJ_H_
#define RELOJ_H_

/** * @file reloj.h
 * @brief Archivo cabecera para la clase reloj.
 * * Contiene la definición de los tipos de datos públicos y las firmas de las 
 * funciones para inicializar, configurar y leer el estado de un reloj digital
 * con soporte para alarma.
 */

/* === Headers files inclusions ==================================================================================== */

#include <stdbool.h>
#include <stdint.h>

/* === Header for C++ compatibility ================================================================================ */

#ifdef __cplusplus
extern "C" {
#endif

/* === Public macros definitions =================================================================================== */

/* === Public data type declarations =============================================================================== */

/** * @brief Tipo de dato opaco que representa la instancia de un reloj.
 */
typedef struct clock_s * clock_t;

/** * @brief Arreglo de 6 bytes para representar la hora.
 * * El formato utilizado es BCD (Binary-Coded Decimal) separado por dígitos:
 * [0] = Decenas de horas, [1] = Unidades de horas,
 * [2] = Decenas de minutos, [3] = Unidades de minutos,
 * [4] = Decenas de segundos, [5] = Unidades de segundos.
 */
typedef uint8_t hora_t[6];

/* === Public variable declarations ================================================================================ */

/* === Public function definitions ================================================================================ */

/**
 * @brief Crea e inicializa una nueva instancia de reloj.
 * @param ticks_per_second Cantidad de "ticks" que conforman un segundo real.
 * @param alarm_handler Puntero a la función (callback) que se ejecutará al dispararse la alarma.
 * @return clock_t Puntero a la instancia del reloj creado.
 */
clock_t RelojCreate(unsigned int ticks_per_second, void * alarm_handler);

/**
 * @brief Obtiene la hora actual del reloj.
 * @param clock Instancia del reloj a consultar.
 * @param current_time Arreglo donde se guardará la hora leída.
 * @return true Si el reloj tiene una hora válida configurada.
 * @return false Si el reloj nunca fue puesto en hora.
 */

bool RelojGetCurrentTime(clock_t clock, hora_t current_time);

/**
 * @brief Configura la hora actual del reloj.
 * @param clock Instancia del reloj a configurar.
 * @param current_time Arreglo con la hora deseada.
 * @return true Si la hora proporcionada es válida y se configuró correctamente.
 * @return false Si la hora proporcionada contiene valores inválidos.
 */
bool RelojSetupCurrentTime(clock_t clock, const hora_t current_time);

/**
 * @brief Incrementa el contador interno del reloj.
 * * Debe ser llamada periódicamente (por ejemplo, desde una interrupción de timer).
 * Cuando la cantidad de llamadas alcance los ticks_per_second configurados, 
 * el reloj avanzará un segundo.
 * @param clock Instancia del reloj a actualizar.
 */
void RelojNewTick(clock_t clock);

/**
 * @brief Configura y habilita una alarma en el reloj.
 * @param clock Instancia del reloj.
 * @param alarm Arreglo con la hora a la cual debe dispararse la alarma.
 * @return true Si la alarma se configuró exitosamente (requiere que el reloj esté en hora).
 * @return false Si el reloj no posee una hora válida.
 */
bool RelojSetupAlarm(clock_t clock, const hora_t alarm);

/**
 * @brief Obtiene la hora a la que está configurada la alarma.
 * @param clock Instancia del reloj.
 * @param alarm Arreglo donde se guardará la hora de la alarma leída.
 * @return true Si la alarma se encuentra habilitada.
 * @return false Si la alarma se encuentra deshabilitada.
 */
bool RelojGetAlarm(clock_t clock, hora_t alarm);

/**
 * @brief Alterna el estado de habilitación de la alarma (Activa/Desactiva).
 * @param clock Instancia del reloj.
 */
void ToggleAlarm(clock_t clock);

/**
 * @brief Pospone temporalmente la alarma.
 * @param clock Instancia del reloj.
 * @param snooze_time Tiempo en segundos por el cual posponer la alarma.
 * @return true Siempre devuelve verdadero indicando que se pospuso exitosamente.
 */
bool RelojSnoozeAlarm(clock_t clock, uint32_t snooze_time);

/**
 * @brief Cancela el estado pospuesto de la alarma y restaura su hora original.
 * @param self Instancia del reloj.
 */
void RelojCancelAlarm(clock_t self);

/* === Public function declarations ================================================================================ */

/* === End of conditional blocks =================================================================================== */

#ifdef __cplusplus
}
#endif

#endif /* RELOJ_H_ */
