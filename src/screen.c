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

/** @file screen.c
 ** @brief Implementación de funciones para manejo de una pantalla multiplexada de siete segmentos
 **/

/* === Headers files inclusions ==================================================================================== */

#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include "screen.h"


/* === Header for C++ compatibility ================================================================================ */

#ifdef __cplusplus
extern "C" {
#endif

/* === Macros definitions ====================================================================== */

#ifndef DISPLAY_MAX_DIGITS
#define DISPLAY_MAX_DIGITS 8
#endif

/* === Private data type declarations ========================================================== */

/**
 * @brief Estructura interna de la pantalla multiplexada de siete segmentos.
 *
 * Almacena la configuración de hardware, el estado actual del barrido, los parámetros
 * para el efecto de parpadeo (flashing) y la memoria de video BCD.
 */
struct display_s {
    uint8_t digits;                             /**< Cantidad total de dígitos de la pantalla */
    uint8_t active_digit;                       /**< Índice del dígito actualmente encendido en el barrido */
    uint8_t flashing_from;                      /**< Índice inicial del rango de dígitos que parpadean */
    uint8_t flashing_to;                        /**< Índice final del rango de dígitos que parpadean */
    uint32_t flashing_frecuency;                /**< Frecuencia de parpadeo (0 para desactivar) */
    uint32_t flashing_count;                    /**< Contador interno para controlar el ciclo de parpadeo */
    uint8_t display_memory[DISPLAY_MAX_DIGITS]; /**< Memoria de video con el estado de cada dígito */
    struct display_driver_s driver[1];          /**< Copia local de los callbacks del hardware */
};

/* === Private function declarations =========================================================== */

/**
 * @brief Asigna memoria dinámica para una nueva instancia de pantalla.
 *
 * Inicializa la estructura de la pantalla copiando los punteros a las
 * funciones de hardware por defecto.
 *
 * @return display_t Puntero a la nueva estructura, o NULL si no hay memoria disponible.
 */
static display_t DisplayAllocate(void);

/* === Private variable definitions ============================================================ */

/**
 * @brief Tabla de conversión BCD a mapa de segmentos.
 *
 * Cada índice (0 al 9) contiene la máscara de bits correspondiente a los
 * segmentos (A-G) que deben encenderse para representar dicho dígito.
 */
static const uint8_t IMAGENES[] = {
    [0] = SEGMENT_A | SEGMENT_B | SEGMENT_C | SEGMENT_D | SEGMENT_E | SEGMENT_F,               // 0
    [1] = SEGMENT_B | SEGMENT_C,                                                               // 1
    [2] = SEGMENT_A | SEGMENT_B | SEGMENT_D | SEGMENT_E | SEGMENT_G,                           // 2
    [3] = SEGMENT_A | SEGMENT_B | SEGMENT_C | SEGMENT_D | SEGMENT_G,                           // 3
    [4] = SEGMENT_B | SEGMENT_C | SEGMENT_F | SEGMENT_G,                                       // 4
    [5] = SEGMENT_A | SEGMENT_C | SEGMENT_D | SEGMENT_F | SEGMENT_G,                           // 5
    [6] = SEGMENT_A | SEGMENT_C | SEGMENT_D | SEGMENT_E | SEGMENT_F | SEGMENT_G,               // 6
    [7] = SEGMENT_A | SEGMENT_B | SEGMENT_C,                                                   // 7
    [8] = SEGMENT_A | SEGMENT_B | SEGMENT_C | SEGMENT_D | SEGMENT_E | SEGMENT_F |SEGMENT_G,    // 8
    [9] = SEGMENT_A | SEGMENT_B |SEGMENT_C|SEGMENT_D|SEGMENT_F|SEGMENT_G                       // 9
};

/* === Public variable definition  ============================================================= */

/**
 * @brief Controlador de hardware por defecto (vacío).
 *
 * Se utiliza para inicializar de forma segura la estructura de la pantalla
 * evitando punteros a funciones nulas que puedan causar un hard fault (excepción de hardware).
 */
static const display_driver_t DRIVER = &(struct display_driver_s) {
    .UpdateDigits = NULL,
    .UpdateSegments = NULL
};

/* === Private function definitions ============================================================ */

static display_t DisplayAllocate(void){
    display_t display = malloc(sizeof(struct display_s));
    if (display != NULL) {
        *display->driver = *DRIVER; // Copia la estructura del driver
    }
    return display;
}

/* === Public function implementation ========================================================== */

display_t DisplayCreate(uint8_t digits, display_driver_t driver){
    display_t display = DisplayAllocate();
    if (display) {
        display->digits = digits;
        display->active_digit = digits - 1; // Inicia con el último dígito para que al refrescar comience desde el primero
        display->flashing_from = 0;
        display->flashing_to = 0;
        display->flashing_frecuency = 0;
        display->flashing_count = 0;
        memcpy(display->driver, driver, sizeof(struct display_driver_s)); // Copia la estructura del driver
        memset(display->display_memory, 0, sizeof(display->display_memory)); // Inicializa la memoria de la pantalla
        display->driver->UpdateSegments(0x00); // Apaga todos los dígitos
    }

    return display;
}

void DisplayWriteBCD(display_t display, uint8_t * number, uint8_t size){
    for (uint8_t i = 0; i < size && i < display->digits; i++) {

        uint8_t estado_punto = display->display_memory[i] & SEGMENT_P;
        
        display->display_memory[i] = IMAGENES[number[i]] | estado_punto; 
    }
}

void DisplayRefresh(display_t display){
    uint8_t segments;

    display->driver->UpdateSegments(0x00); // Apaga todos los segmentos

    __asm volatile ("nop");
    __asm volatile ("nop");
    __asm volatile ("nop");
    __asm volatile ("nop");

    display->active_digit = (display->active_digit + 1) % display->digits; // Avanza al siguiente dígito
    
    segments = display->display_memory[display->active_digit]; // Obtiene los segmentos del dígito activo

    if (display->flashing_frecuency > 0) {
        // Incrementamos el contador 1 vez por ciclo completo de la pantalla
        if (display->active_digit == 0) {
            display->flashing_count = (display->flashing_count + 1) % display->flashing_frecuency;
        }

        // Si el dígito actual debe parpadear
        if (display->active_digit >= display->flashing_from && display->active_digit <= display->flashing_to) {
            // Mitad del ciclo encendido, mitad del ciclo apagado
            if (display->flashing_count >= (display->flashing_frecuency / 2)) {
                segments = 0x00; // Enmascaramos apagando todo el dígito temporalmente
            }
        }
    }
    display->driver->UpdateDigits(display->active_digit); // Activa el dígito actual
    display->driver->UpdateSegments(segments); // Actualiza los segmentos del dígito actual
}

void DisplayFlashDigits(display_t display, uint8_t from, uint8_t to, uint16_t frecuency){
    display->flashing_from = from;
    display->flashing_to = to;
    display->flashing_frecuency = frecuency;
    display->flashing_count = 0;
}

void DisplayToggleDots(display_t display, uint8_t from, uint8_t to){
    for (uint8_t i = from; i <= to && i < display->digits; i++) {
        display->display_memory[i] ^= SEGMENT_P; // Conmuta el bit del punto decimal
    }
}

void DisplaySetDots(display_t display, uint8_t from, uint8_t to) {
    for (uint8_t i = from; i <= to && i < display->digits; i++) {
        display->display_memory[i] |= SEGMENT_P; // Fuerza el encendido (OR)
    }
}

void DisplayClearDots(display_t display, uint8_t from, uint8_t to) {
    for (uint8_t i = from; i <= to && i < display->digits; i++) {
        display->display_memory[i] &= ~SEGMENT_P; // Fuerza el apagado (AND NOT)
    }
}

/* === End of conditional blocks =================================================================================== */

#ifdef __cplusplus
}
#endif
