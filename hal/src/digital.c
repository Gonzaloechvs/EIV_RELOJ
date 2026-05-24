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

/** @file digital.c
 ** @brief Implementación de funciones para manejo de señales digitales
 **/

/* === Headers files inclusions ================================================================ */

#include "digital.h"
#include "chip.h"
#include <stdlib.h>

/* === Macros definitions ====================================================================== */

/* === Private data type declarations ========================================================== */

struct digital_output_s {
    uint32_t puerto;
    uint8_t terminal;
    bool estado_invertido;
};

struct digital_input_s {
    uint32_t puerto;
    uint8_t terminal;
    bool ultimo_estado;
    bool estado_invertido;
};

/* === Private function declarations =========================================================== */

/* === Private variable definitions ============================================================ */

/* === Public variable definition  ============================================================= */

/* === Private function definitions ============================================================ */

/* === Public function implementation ========================================================== */

digital_output_t DigitalOutputCreate(uint32_t puerto, uint8_t terminal, bool estado_invertido) {
    digital_output_t self;
    self = malloc(sizeof(struct digital_output_s));
    if (self != NULL) {
        self->puerto = puerto;
        self->terminal = terminal;
        self->estado_invertido = estado_invertido;
        Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, self->puerto, self->terminal, true);
        DigitalOutputDeactivate(self);
    }
    return self;
}

void DigitalOutputActivate(digital_output_t self) {
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, self->puerto, self->terminal, !self->estado_invertido);
    // Activar la salida digital (setear el pin)
}

void DigitalOutputDeactivate(digital_output_t self) {
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, self->puerto, self->terminal, self->estado_invertido);
    // Desactivar la salida digital (resetear el pin)
}

void DigitalOutputToggle(digital_output_t self) {
    Chip_GPIO_SetPinToggle(LPC_GPIO_PORT, self->puerto, self->terminal);
    // Alternar el estado de la salida digital (toggle del pin)
}

bool DigitalOutputGetState(digital_output_t self) {
    return Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, self->puerto, self->terminal) != 0;
    // Obtener el estado actual de la salida digital (leer el pin)
}

digital_input_t DigitalInputCreate(uint32_t puerto, uint8_t terminal, bool estado_invertido) {
    digital_input_t self;
    self = malloc(sizeof(struct digital_input_s));
    if (self != NULL) {
        self->puerto = puerto;
        self->terminal = terminal;
        self->estado_invertido = estado_invertido;
        Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, self->puerto, self->terminal, false);
        self->ultimo_estado = DigitalInputGetState(self);
    }
    return self;
}

bool DigitalInputGetState(digital_input_t self){
    bool estado = (Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, self->puerto, self->terminal) != 0);
    if (self->estado_invertido) {
        estado = !estado;
    }
    return estado;
    // Obtener el estado actual de la entrada digital (leer el pin)

}

bool DigitalInputHasChanged(digital_input_t self){
    bool estado_actual = DigitalInputGetState(self);
    bool ha_cambiado = (estado_actual != self->ultimo_estado);
    self->ultimo_estado = estado_actual;
    return ha_cambiado;
    // Determinar si el estado de la entrada digital ha cambiado desde la última lectura sin sobreescribir el ultimo estado

}

bool DigitalInputHasActivated(digital_input_t self){
    bool estado_actual = DigitalInputGetState(self);
    bool ha_activado = (estado_actual && !self->ultimo_estado);
    self->ultimo_estado = estado_actual; 
    return ha_activado;
    // Determinar si la entrada digital ha sido activada (flanco ascendente)

}

bool DigitalInputHasDeactivated(digital_input_t self){
    bool estado_actual = DigitalInputGetState(self);
    bool ha_desactivado = (!estado_actual && self->ultimo_estado);
    self->ultimo_estado = estado_actual;
    return ha_desactivado;
    // Determinar si la entrada digital ha sido desactivada (flanco descendente)
}


/* === End of documentation ==================================================================== */
