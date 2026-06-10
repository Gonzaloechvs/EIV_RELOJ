/************************************************************************************************
Copyright 2026-2035, Laboratorio de Microprocesadores
Facultad de Ciencias Exactas y Tecnologia
Universidad Nacional de Tucuman
http://www.microprocesadores.unt.edu.ar/

Copyright 2026-2035, Gonzalo Chaves <gonzaloechvs@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
associated documentation files (the "Software"), to deal in the Software without restriction,
including without limitation the rights to use, copy, modify, merge, publish, distribute,
sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial
portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

SPDX-License-Identifier: MIT
*************************************************************************************************/

/** @file main.c
 ** @brief Punto de entrada de la aplicación.
 **
 ** Implementa la lógica de control y prueba para la pantalla multiplexada
 ** de 7 segmentos y las teclas del poncho.
 **
 ** \addtogroup samples Samples
 ** \brief Samples applications with MUJU Framework
 ** @{ */

/* === Headers files inclusions =============================================================== */

#ifndef EDU_CIAA_NXP
#error "This program can only be compiled for the EDU-CIAA-NXP board"
#endif

#include "placa.h"

/* === Macros definitions ====================================================================== */

#define RETARDO_MS_DEFAULT   100     // Tiempo total de espera en milisegundos
#define CICLOS_POR_MS        25000   // Iteraciones necesarias para simular 1 ms

/* === Private data type declarations ========================================================== */

/* === Private variable declarations =========================================================== */

/* === Private function declarations =========================================================== */

/* === Public variable definitions ============================================================= */

/* === Private variable definitions ============================================================ */

/* === Private function implementation ========================================================= */

/* === Public function implementation ========================================================== */

int main(void) {
    board_t placa = BoardCreate();
    uint8_t entrada[4] = {1,2,3,4};
    uint16_t frecuencia = 0;

    DisplayWriteBCD(placa->pantalla, entrada, sizeof(entrada));
    while (true) {
        if(DigitalInputHasActivated(placa->tecla_aceptar)){
            if (frecuencia == 0) {
            frecuencia = 4;
            } else if(frecuencia == 4) {
                frecuencia = 16;
            } else if(frecuencia == 16) {
                frecuencia = 64;
            } else if(frecuencia == 64) {
                frecuencia = 128;
            } else {
                frecuencia = 0;
            }
            DisplayFlashDigits(placa->pantalla, 0, 3, frecuencia);
        }
        
        if(DigitalInputHasActivated(placa->tecla_cancelar)){
            DisplayToggleDots(placa->pantalla, 0, 3);
        }

        if(DigitalInputHasActivated(placa->tecla_F4)){
            // Cambia el digito 1 por su numero siguiente
            entrada[0] = (entrada[0] + 1) % 10;
            DisplayWriteBCD(placa->pantalla, entrada, sizeof(entrada));
        }

        if(DigitalInputHasActivated(placa->tecla_F3)){
            // Cambia el digito 2 por su numero siguiente
            entrada[1] = (entrada[1] + 1) % 10;
            DisplayWriteBCD(placa->pantalla, entrada, sizeof(entrada));
        }

        if(DigitalInputHasActivated(placa->tecla_F2)){
            // Cambia el digito 3 por su numero siguiente
            entrada[2] = (entrada[2] + 1) % 10;
            DisplayWriteBCD(placa->pantalla, entrada, sizeof(entrada));
        }

        if(DigitalInputHasActivated(placa->tecla_F1)){
            // Cambia el digito 4 por su numero siguiente
            entrada[3] = (entrada[3] + 1) % 10;
            DisplayWriteBCD(placa->pantalla, entrada, sizeof(entrada));
        }

        for(int index = 0; index < RETARDO_MS_DEFAULT; index++){
            for(int delay = 0; delay < CICLOS_POR_MS; delay++){
                __asm("NOP");
            }
            DisplayRefresh(placa->pantalla);
        }
    }

    return 0;
}

/* === End of documentation ==================================================================== */

/** @} End of module definition for doxygen */
