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
 ** @brief Punto de entrada de la aplicación y lógica de control de periféricos
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

/**
 * @brief Enumeration with color sequence of RGB led
 */
typedef enum rgb_color_e {
    LED_RED_ON = 0,
    LED_RED_OFF,
    LED_GREEN_ON,
    LED_GREEN_OFF,
    LED_BLUE_ON,
    LED_BLUE_OFF,
} rgb_color_t;

/* === Private variable declarations =========================================================== */

/* === Private function declarations =========================================================== */

/**
 * @brief Function to flash RGB led in sequence
 */
static void FlashLed(board_t placa);

/**
 * @brief Function to switch on and off a led with two keys
 */
static void SwitchLed(board_t placa);

/**
 * @brief Function to switch on and off a led with a single key
 */
static void ToggleLed(board_t placa);

/**
 * @brief Function to turn on a led while a key is pressed
 */
static void TestLed(board_t placa);

/**
 * @brief Function to generate a delay of approximately 100 ms
 */
static void Delay(void);

/* === Public variable definitions ============================================================= */

/* === Private variable definitions ============================================================ */

/* === Private function implementation ========================================================= */

static void FlashLed(board_t placa) {
    static int divisor = 0;
    static rgb_color_t state = LED_BLUE_OFF;

    divisor++;
    if (divisor == 5) {
        divisor = 0;
        state = (state + 1) % (LED_BLUE_OFF + 1);

        switch (state) {
        case LED_RED_ON:
            DigitalOutputActivate(placa->led_rgb_rojo);
            break;
        case LED_GREEN_ON:
            DigitalOutputActivate(placa->led_rgb_verde);
            break;
        case LED_BLUE_ON:
            DigitalOutputActivate(placa->led_rgb_azul);
            break;
        default:
            DigitalOutputDeactivate(placa->led_rgb_rojo);
            DigitalOutputDeactivate(placa->led_rgb_verde);
            DigitalOutputDeactivate(placa->led_rgb_azul);
            break;
        }
    }
}

static void SwitchLed(board_t placa) {
    if (DigitalInputHasActivated(placa->tecla_prender)) {
        DigitalOutputActivate(placa->led_amarillo);
    }
    if (DigitalInputHasActivated(placa->tecla_apagar)) {
        DigitalOutputDeactivate(placa->led_amarillo);
    }
}

static void ToggleLed(board_t placa) {
    if (DigitalInputHasActivated(placa->tecla_cambiar)) {
        DigitalOutputToggle(placa->led_rojo);
    }
}

static void TestLed(board_t placa) {
    //if (DigitalInputGetState(placa->tecla_probar)) {
    if ((DigitalInputGetState(placa->tecla_aceptar)||DigitalInputGetState(placa->tecla_cancelar))) {
    // if ((DigitalInputGetState(placa->tecla_F1)||DigitalInputGetState(placa->tecla_F2)||DigitalInputGetState(placa->tecla_F3)||DigitalInputGetState(placa->tecla_F4))) {
        DigitalOutputActivate(placa->digito_1);
        DigitalOutputActivate(placa->digito_2);
        DigitalOutputActivate(placa->digito_3);
        DigitalOutputActivate(placa->digito_4);

        DigitalOutputActivate(placa->segmento_a);
        DigitalOutputActivate(placa->segmento_b);
        DigitalOutputActivate(placa->segmento_c);
        DigitalOutputActivate(placa->segmento_d);
        DigitalOutputActivate(placa->segmento_e);
        DigitalOutputActivate(placa->segmento_f);
        DigitalOutputActivate(placa->segmento_g);
        DigitalOutputActivate(placa->segmento_p);

        DigitalOutputActivate(placa->led_verde);
    } else {
        DigitalOutputDeactivate(placa->digito_1);
        DigitalOutputDeactivate(placa->digito_2);
        DigitalOutputDeactivate(placa->digito_3);
        DigitalOutputDeactivate(placa->digito_4);
        DigitalOutputDeactivate(placa->segmento_a);
        DigitalOutputDeactivate(placa->segmento_b);
        DigitalOutputDeactivate(placa->segmento_c);
        DigitalOutputDeactivate(placa->segmento_d);
        DigitalOutputDeactivate(placa->segmento_e);
        DigitalOutputDeactivate(placa->segmento_f);
        DigitalOutputDeactivate(placa->segmento_g);
        DigitalOutputDeactivate(placa->segmento_p);
        DigitalOutputDeactivate(placa->led_verde);
    }
}

static void Delay(void) {
    for (int index = 0; index < RETARDO_MS_DEFAULT; index++) {
        for (int delay = 0; delay < CICLOS_POR_MS; delay++) {
            __asm("NOP");
        }
    }
}

/* === Public function implementation ========================================================== */

int main(void) {

    // BoardSetup();
    // ConfigureLeds();
    // ConfigureKeys();
    board_t placa = BoardCreate();

    while (true) {
        FlashLed(placa);
        SwitchLed(placa);
        ToggleLed(placa);
        TestLed(placa);

        Delay();
    }

    return 0;
}

/* === End of documentation ==================================================================== */

/** @} End of module definition for doxygen */
