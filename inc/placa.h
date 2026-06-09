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

#ifndef PLACA_H_
#define PLACA_H_

/** @file placa.h
 ** @brief Definición de tipos y funciones para el manejo integral de la placa EDU-CIAA-NXP.
 **
 ** Este módulo agrupa y configura todas las entradas y salidas digitales
 ** disponibles en la placa (LEDS y teclas), proveyendo una interfaz única.
 **/

/* === Headers files inclusions ==================================================================================== */

#include "digital.h"
#include "poncho.h"
#include "screen.h"

/* === Header for C++ compatibility ================================================================================ */

#ifdef __cplusplus
extern "C" {
#endif

/* === Public macros definitions =================================================================================== */

/* === Public data type declarations =============================================================================== */

/**
 * @brief Estructura que encapsula todos los periféricos digitales de la placa EDU-CIAA-NXP.
 */
typedef struct board_s {
    // Teclas de la placa inferior
    digital_input_t tecla_probar;  /**< Puntero a la Tecla 4 (TEC4) */
    digital_input_t tecla_cambiar; /**< Puntero a la Tecla 3 (TEC3) */
    digital_input_t tecla_prender; /**< Puntero a la Tecla 1 (TEC1) */
    digital_input_t tecla_apagar;  /**< Puntero a la Tecla 2 (TEC2) */
    // Teclas del poncho
    digital_input_t tecla_aceptar;  /**< Puntero a la Tecla Aceptar */
    digital_input_t tecla_cancelar;  /**< Puntero a la Tecla Cancelar */
    digital_input_t tecla_F1;  /**< Puntero a la Tecla F1 (F1) */
    digital_input_t tecla_F2;  /**< Puntero a la Tecla F2 (F2) */
    digital_input_t tecla_F3;  /**< Puntero a la Tecla F3 (F3) */
    digital_input_t tecla_F4;  /**< Puntero a la Tecla F4 (F4) */
    // LEDs de la placa inferior
    digital_output_t led_rgb_rojo;  /**< Puntero al LED RGB canal Rojo */
    digital_output_t led_rgb_verde; /**< Puntero al LED RGB canal Verde */
    digital_output_t led_rgb_azul;  /**< Puntero al LED RGB canal Azul */
    digital_output_t led_amarillo;  /**< Puntero al LED Amarillo independiente */
    digital_output_t led_rojo;      /**< Puntero al LED Rojo independiente */
    digital_output_t led_verde;     /**< Puntero al LED Verde independiente */
    // Buzzer del poncho
    digital_output_t buzzer;         /**< Puntero al Buzzer */
    // Display de 7 segmentos del poncho
    display_t pantalla; /**< Descriptor de la pantalla multiplexada de siete segmentos */
} const * const board_t;

/* === Public variable declarations ================================================================================ */

/* === Public function declarations ================================================================================ */

/**
 * @brief Inicializa el hardware de la placa y configura todos sus periféricos.
 * * Llama a la configuración base de la placa (multiplexor de pines) e instancia los 
 * objetos `digital_output_t`, `digital_input_t` y `display_t` correspondientes a los componentes de la placa.
 * * @return board_t Puntero constante a la estructura que contiene los accesos a los periféricos.
 */
board_t BoardCreate(void);

/* === End of conditional blocks =================================================================================== */

#ifdef __cplusplus
}
#endif

#endif /* PLACA_H_ */
