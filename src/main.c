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

/* === Macros definitions ====================================================================== */

#define MODO_PRUEBA 1 // Cambia a 0 cuando quieras tiempo real

#if MODO_PRUEBA == 1
    #define TICKS_POR_SEGUNDO 1    // 100 veces más rápido (1 seg real = 100 seg simulados)
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
    board_t placa = BoardCreate();
    mi_pantalla = placa->pantalla;

    SystemCoreClockUpdate();
    SysTick_Config(SystemCoreClock / 1000);

    reloj = RelojCreate(TICKS_POR_SEGUNDO, SonarAlarma);

    hora_t hora_inicial = {0, 0, 0, 0, 0, 0};
    (void)RelojSetupCurrentTime(reloj, hora_inicial);

    bool modo_edicion = false;
    uint16_t tiempo_antirrebote = 0;

    while (true) {
        hora_t hora_actual;
        uint8_t hora_display[4];
    
        if (RelojGetCurrentTime(reloj, hora_actual)) {
            hora_display[0] = hora_actual[0];
            hora_display[1] = hora_actual[1];
            hora_display[2] = hora_actual[2];
            hora_display[3] = hora_actual[3];
            DisplayWriteBCD(placa->pantalla, hora_display, sizeof(hora_display));
        }

        if (tiempo_antirrebote > 0) {
            tiempo_antirrebote--; 
        }

        if (tiempo_antirrebote == 0) {
            bool tecla_presionada = false;

            if (DigitalInputHasActivated(placa->tecla_aceptar)) {
                modo_edicion = !modo_edicion;
                if (modo_edicion) {
                    modo = MODO_HORAS; // O el estado de edición que uses
                    DisplayFlashDigits(placa->pantalla, 0, 3, 100);
                } else {
                    modo = MODO_NORMAL;
                    DisplayFlashDigits(placa->pantalla, 0, 3, 0);
                }
                tecla_presionada = true;
            }

            if (modo_edicion) {
                uint8_t horas[2] = {hora_actual[0], hora_actual[1]};
                uint8_t minutos[2] = {hora_actual[2], hora_actual[3]};
                bool cambio = false;

                if (DigitalInputHasActivated(placa->tecla_F1)) {
                    IncrementarBCD(minutos, LIMITE_MINUTOS);
                    hora_actual[2] = minutos[0];
                    hora_actual[3] = minutos[1];
                    cambio = true;
                }
                if (DigitalInputHasActivated(placa->tecla_F2)) {
                    DecrementarBCD(minutos, LIMITE_MINUTOS);
                    hora_actual[2] = minutos[0];
                    hora_actual[3] = minutos[1];
                    cambio = true;
                }
                if (DigitalInputHasActivated(placa->tecla_F3)) {
                    IncrementarBCD(horas, LIMITE_HORAS);
                    hora_actual[0] = horas[0];
                    hora_actual[1] = horas[1];
                    cambio = true;
                }
                if (DigitalInputHasActivated(placa->tecla_F4)) {
                    DecrementarBCD(horas, LIMITE_HORAS);
                    hora_actual[0] = horas[0];
                    hora_actual[1] = horas[1];
                    cambio = true;
                }

                if (cambio) {
                    RelojSetupCurrentTime(reloj, hora_actual);
                    tecla_presionada = true;
                }
            }
            
            if (tecla_presionada) {
                tiempo_antirrebote = 500; 
            }
        }
        __asm volatile ("wfi");
    }

    return 0;
}

void SysTick_Handler(void) {
    static uint16_t contador_puntos = 0;

    DisplayRefresh(mi_pantalla);

    RelojNewTick(reloj);

    contador_puntos = (contador_puntos + 1) % 1000;
    if (modo == MODO_NORMAL) {
        // Cada 500 ms conmuta el estado de los puntos del centro
        if ((contador_puntos == 0) || (contador_puntos == 500)) {
            DisplayToggleDots(mi_pantalla, 1, 1); 
        }
    }
}

/* === End of documentation ==================================================================== */

/** @} End of module definition for doxygen */
