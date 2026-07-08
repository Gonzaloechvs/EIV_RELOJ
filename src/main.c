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
 ** Manejo del reloj como un sistema operativo
 **
 ** \addtogroup samples Samples
 ** \brief Samples applications with MUJU Framework
 ** @{ */

/* === Headers files inclusions =============================================================== */

#ifndef EDU_CIAA_NXP
#error "This program can only be compiled for the EDU-CIAA-NXP board"
#endif

#include "placa.h"
#include "reloj.h"
#include <string.h>

/* === Macros definitions ====================================================================== */

#define MODO_PRUEBA 0 // Cambia a 0 cuando quieras tiempo real

#if MODO_PRUEBA == 1
    #define TICKS_POR_SEGUNDO 10    // 100 veces más rápido (1 seg real = 100 seg simulados)
#else
    #define TICKS_POR_SEGUNDO 1000  // Tiempo real (1 seg real = 1 seg simulado)
#endif

/* === Private data type declarations ========================================================== */

typedef enum {
    MODO_SIN_AJUSTAR,       // Estado inicial
    MODO_NORMAL,            // Muestra hora actual
    MODO_MINUTOS,           // Ajuste de minutos del reloj
    MODO_HORAS,             // Ajuste de horas del reloj
    MODO_MINUTOS_ALARMA,    // Ajuste de minutos de la alarma
    MODO_HORAS_ALARMA       // Ajuste de horas de la alarma
} modo_t;

/* === Private variable declarations =========================================================== */

/* === Private function declarations =========================================================== */

/* === Public variable definitions ============================================================= */

/* === Private variable definitions ============================================================ */

display_t mi_pantalla;

volatile static modo_t modo;
volatile static modo_t ultimo_modo = MODO_SIN_AJUSTAR;
static bool reloj_iniciado = false;

static clock_t reloj;

static const uint8_t LIMITE_MINUTOS[] = {6, 0};

static const uint8_t LIMITE_HORAS[] = {2, 4};

/* === Private function implementation ========================================================= */

void CambiarModo(modo_t valor){
    modo = valor;
    switch (modo) {
    case MODO_SIN_AJUSTAR:
        DisplayFlashDigits(mi_pantalla, 0, 3, 100);
        break;
    case MODO_NORMAL:
        DisplayFlashDigits(mi_pantalla, 0, 0, 0);
        break;
    case MODO_MINUTOS:
        DisplayFlashDigits(mi_pantalla, 2, 3, 100);
        break;
    case MODO_HORAS:
        DisplayFlashDigits(mi_pantalla, 0, 1, 100);
        break;
    case MODO_MINUTOS_ALARMA:
        DisplayFlashDigits(mi_pantalla, 2, 3, 100);
        break;
    case MODO_HORAS_ALARMA:
        DisplayFlashDigits(mi_pantalla, 0, 1, 100);
        break;
        
    default:
        break;
    }

}

void SonarAlarma(void){

}

void IncrementarBCD(uint8_t numero[2], const uint8_t limite[2]) {
    numero[1]++;
    if (numero[1] > 9) {
        numero[0]++;
        numero[1] = 0;
    }
    if((numero[1] == limite[1]) && (numero[0] == limite[0])) {
        numero[0] = 0;
        numero[1] = 0;
    }
}

void DecrementarBCD(uint8_t numero[2], const uint8_t limite[2]) {
    // Chequea si estamos en el mínimo (0, 0)
    if ((numero[0] == 0) && (numero[1] == 0)) {
        // Ir al máximo válido antes del límite
        if (limite[1] > 0) {
            numero[0] = limite[0];
            numero[1] = limite[1] - 1;
        } else {
            numero[0] = limite[0] - 1;
            numero[1] = 9;
        }
    } else {
        // Decrementar normalmente
        if (numero[1] == 0) {
            numero[0]--;
            numero[1] = 9;
        } else {
            numero[1]--;
        }
    }
}


/* === Public function implementation ========================================================== */

int main(void) {

    for (volatile uint32_t i = 0; i < 5000000; i++) {
        __asm("nop");
    }

    board_t placa = BoardCreate();
    mi_pantalla = placa->pantalla;

    SystemCoreClockUpdate();

    reloj = RelojCreate(TICKS_POR_SEGUNDO, SonarAlarma);
    CambiarModo(MODO_SIN_AJUSTAR);

    hora_t hora_inicial = {0, 0, 0, 0, 0, 0};
    (void)RelojSetupCurrentTime(reloj, hora_inicial);

    uint16_t tiempo_antirrebote = 0;
    uint16_t contador_F1 = 0;
    uint32_t contador_AFK = 0;

    hora_t hora_en_edicion = {0, 0, 0, 0, 0, 0}; 

    SysTick_Config(SystemCoreClock / 1000);
    __enable_irq();

    while (true) {
        hora_t hora_actual;
        uint8_t hora_display[4];

        bool valid_time = RelojGetCurrentTime(reloj, hora_actual);

        if (modo == MODO_MINUTOS || modo == MODO_HORAS) {
            memcpy(hora_display, hora_en_edicion, 4);
        } else if (valid_time) {
            memcpy(hora_display, hora_actual, 4);
        }

        if (valid_time || modo == MODO_MINUTOS || modo == MODO_HORAS) {
            DisplayWriteBCD(placa->pantalla, hora_display, sizeof(hora_display));
        }

        if (tiempo_antirrebote > 0) {
            tiempo_antirrebote--; 
        }

        if (modo == MODO_MINUTOS || modo == MODO_HORAS) {
            contador_AFK++;
            if (contador_AFK >= 30000) { // 30000 milisegundos = 30 segundos
                if (modo == MODO_MINUTOS || modo == MODO_HORAS) {
                    CambiarModo(ultimo_modo);
                } else {
                    CambiarModo(MODO_NORMAL);
                }
                contador_AFK = 0;
                tiempo_antirrebote = 150;
            }
        } else {
            contador_AFK = 0;
        }

        if (modo == MODO_NORMAL || modo == MODO_SIN_AJUSTAR) {
            if (DigitalInputGetState(placa->tecla_F1)) {
                contador_F1++;
                if (contador_F1 >= 3000) { 
                    ultimo_modo = modo;
                    CambiarModo(MODO_MINUTOS);
                    tiempo_antirrebote = 300; 
                    contador_F1 = 0;

                    if (valid_time) {
                        memcpy(hora_en_edicion, hora_actual, sizeof(hora_t));
                    } else {
                        memset(hora_en_edicion, 0, sizeof(hora_t));
                    }
                }
            } else {
                contador_F1 = 0;
            }
        }

        if (tiempo_antirrebote == 0) {
            bool tecla_presionada = false;

            switch (modo) {
            case MODO_SIN_AJUSTAR:
            case MODO_NORMAL:
                break;
            case MODO_MINUTOS:
                if (DigitalInputHasActivated(placa->tecla_F1)) {
                    IncrementarBCD(&hora_en_edicion[2], LIMITE_MINUTOS);
                    tecla_presionada = true;
                }
                if (DigitalInputHasActivated(placa->tecla_F2)) {
                    DecrementarBCD(&hora_en_edicion[2], LIMITE_MINUTOS);
                    tecla_presionada = true;
                }
                if (DigitalInputHasActivated(placa->tecla_aceptar)) {
                    CambiarModo(MODO_HORAS);
                    tecla_presionada = true;
                }
                if (DigitalInputHasActivated(placa->tecla_cancelar)) {
                    CambiarModo(ultimo_modo);
                    tecla_presionada = true;
                }
                break;
            case MODO_HORAS:
                if (DigitalInputHasActivated(placa->tecla_F3)) {
                    IncrementarBCD(&hora_en_edicion[0], LIMITE_HORAS);
                    tecla_presionada = true;
                }
                if (DigitalInputHasActivated(placa->tecla_F4)) {
                    DecrementarBCD(&hora_en_edicion[0], LIMITE_HORAS);
                    tecla_presionada = true;
                }
                if (DigitalInputHasActivated(placa->tecla_aceptar)) {
                    RelojSetupCurrentTime(reloj, hora_en_edicion);
                    reloj_iniciado = true;
                    CambiarModo(MODO_NORMAL);
                    tecla_presionada = true;
                }
                if (DigitalInputHasActivated(placa->tecla_cancelar)) {
                    CambiarModo(ultimo_modo);
                    tecla_presionada = true;
                }
                break;
            case MODO_MINUTOS_ALARMA:
            case MODO_HORAS_ALARMA:
                break;
            default:
                break;
            }

            if (tecla_presionada) {
                tiempo_antirrebote = 150;
                contador_AFK = 0;
            }
        }
        __asm volatile ("wfi");
    }

    return 0;
}

void SysTick_Handler(void) {
    static uint16_t contador_puntos = 0;

    DisplayRefresh(mi_pantalla);

    if (reloj_iniciado) {
        RelojNewTick(reloj);
    }

    contador_puntos = (contador_puntos + 1) % 1000;
    if (modo == MODO_NORMAL) {
        if ((contador_puntos == 0) || (contador_puntos == 500)) {
            DisplayToggleDots(mi_pantalla, 1, 1); 
        }
    }
}

/* === End of documentation ==================================================================== */

/** @} End of module definition for doxygen */
