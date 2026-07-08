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
 ** @brief Punto de entrada de la aplicación del reloj digital con alarma.
 **
 ** Contiene el lazo principal de control y la máquina de estados que gestiona
 ** la interfaz de usuario (UI), el filtrado de teclado, los tiempos de inactividad
 ** y la interacción con la capa lógica del reloj.
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

/** * @brief Control del entorno de ejecución: Tiempo real vs. Tiempo simulado.
 * MODO_PRUEBA = 1: Acelera el reloj (10 Hz) para validar transiciones rápidas y alarmas en segundos.
 * MODO_PRUEBA = 0: Configura el Systick para operar a frecuencia real (1000 Hz / 1 ms).
 */
#define MODO_PRUEBA 0

#if MODO_PRUEBA == 1
    #define TICKS_POR_SEGUNDO 10    // 100 veces más rápido (1 seg real = 100 seg simulados)
#else
    #define TICKS_POR_SEGUNDO 1000  // Tiempo real (1 seg real = 1 seg simulado)
#endif

/** @brief Tiempos de la interfaz de usuario (basados en llamadas del SysTick de 1ms) */
#define TIEMPO_AFK_MS               30000   /**< Timeout para abortar edición (30 seg) */
#define TIEMPO_PULSACION_LARGA_MS   3000    /**< Tiempo para registrar ingreso a configuración (1 seg) */
#define ANTIRREBOTE_CORTO_MS        150     /**< Guarda para pulsaciones simples (150 ms) */
#define ANTIRREBOTE_LARGO_MS        300     /**< Guarda post-pulsación larga (300 ms) */

/** @brief Parámetros lógicos y de sistema */
#define TIEMPO_SNOOZE_SEG           300     /**< Segundos que se pospone la alarma (5 minutos) */
#define DEMORA_JTAG_CICLOS          5000000 /**< Ciclos de demora inicial para estabilizar el debugger */

/* === Private data type declarations ========================================================== */

/**
 * @brief Estados de la interfaz de usuario y modos de edición.
 */
typedef enum {
    MODO_SIN_AJUSTAR,       /**< Estado inicial: el reloj parpadea esperando configuración */
    MODO_NORMAL,            /**< Funcionamiento normal: muestra la hora actual y titila el punto */
    MODO_MINUTOS,           /**< Modo de edición: ajuste de los minutos del reloj principal */
    MODO_HORAS,             /**< Modo de edición: ajuste de las horas del reloj principal */
    MODO_MINUTOS_ALARMA,    /**< Modo de edición: ajuste de los minutos de la alarma */
    MODO_HORAS_ALARMA       /**< Modo de edición: ajuste de las horas de la alarma */
} modo_t;

/* === Private variable declarations =========================================================== */

/* === Private function declarations =========================================================== */

/* === Public variable definitions ============================================================= */

/* === Private variable definitions ============================================================ */

display_t mi_pantalla;      /**< Descriptor de la pantalla multiplexada de 7 segmentos */
digital_output_t mi_led;    /**< Descriptor del indicador lumínico (LED rojo) de alarma activa */

volatile static modo_t modo;                        /**< Estado actual de la máquina de estados de la UI */
volatile static modo_t ultimo_modo = MODO_SIN_AJUSTAR; /**< Memoria del último modo válido (para cancelaciones) */

static clock_t reloj;                               /**< Instancia opaca de la lógica del reloj */

static const uint8_t LIMITE_MINUTOS[] = {6, 0};     /**< Límite superior BCD para la edición de minutos (60) */

static const uint8_t LIMITE_HORAS[] = {2, 4};       /**< Límite superior BCD para la edición de horas (24) */

static bool reloj_iniciado = false;                 /**< Bandera de sincronismo: habilita el avance temporal del reloj */
volatile static bool alarma_sonando = false;        /**< Bandera de estado del actuador de la alarma */

volatile uint16_t tiempo_antirrebote = 0;           /**< Tiempo de guarda para filtrado de rebotes de teclado (ms) */
volatile uint32_t contador_AFK = 0;                 /**< Contador de inactividad del usuario en menús de edición (ms) */

/* === Private function implementation ========================================================= */

/**
 * @brief Cambia el modo de operación actual de la interfaz y actualiza los efectos visuales.
 * @param valor Nuevo modo de operación a establecer.
 */
void CambiarModo(modo_t valor){
    modo = valor;
    switch (modo) {
    case MODO_SIN_AJUSTAR:
        DisplayFlashDigits(mi_pantalla, 0, 3, 100);
        DisplaySetDots(mi_pantalla, 1, 1);
        break;
    case MODO_NORMAL:
        DisplayFlashDigits(mi_pantalla, 0, 0, 0);
        DisplayClearDots(mi_pantalla, 0, 3);
        break;
    case MODO_MINUTOS:
        DisplayFlashDigits(mi_pantalla, 2, 3, 100);
        DisplayClearDots(mi_pantalla, 0, 3);
        break;
    case MODO_HORAS:
        DisplayFlashDigits(mi_pantalla, 0, 1, 100);
        DisplayClearDots(mi_pantalla, 0, 3);
        break;
    case MODO_MINUTOS_ALARMA:
        DisplayFlashDigits(mi_pantalla, 2, 3, 100);
        DisplaySetDots(mi_pantalla, 0, 3);
        break;
    case MODO_HORAS_ALARMA:
        DisplayFlashDigits(mi_pantalla, 0, 1, 100);
        DisplaySetDots(mi_pantalla, 0, 3);
        break;        
    default:
        break;
    }

}

/**
 * @brief Callback disparado por la lógica del reloj al coincidir el tiempo con la alarma.
 */
void SonarAlarma(void){
    alarma_sonando = true;
    DigitalOutputActivate(mi_led); //se utiliza el led_rojo de la placa como indicador visual de la alarma
}

/**
 * @brief Incrementa un valor numérico representado en formato BCD de dos dígitos.
 * @param numero Arreglo de 2 bytes [decenas, unidades] a incrementar.
 * @param limite Arreglo de 2 bytes [decenas, unidades] que representa el límite superior exclusivo.
 */
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

/**
 * @brief Decrementa un valor numérico representado en formato BCD de dos dígitos.
 * @param numero Arreglo de 2 bytes [decenas, unidades] a decrementar.
 * @param limite Arreglo de 2 bytes [decenas, unidades] que define el valor máximo al desbordar por cero.
 */
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

/**
 * @brief Función principal del programa.
 * @return int Retorno del sistema (no utilizado en sistemas embebidos bared-metal).
 */
int main(void) {

    // Demora de cortesía para estabilidad del JTAG en la depuración
    for (volatile uint32_t i = 0; i < DEMORA_JTAG_CICLOS; i++) {
        __asm volatile ("nop");
    }

    // Inicialización de la abstracción de hardware (HAL)
    board_t placa = BoardCreate();
    mi_pantalla = placa->pantalla;
    mi_led = placa->led_rojo;

    SystemCoreClockUpdate();

    // Creación del objeto de lógica temporal
    reloj = RelojCreate(TICKS_POR_SEGUNDO, SonarAlarma);
    CambiarModo(MODO_SIN_AJUSTAR);

    hora_t hora_inicial = {0, 0, 0, 0, 0, 0};
    (void)RelojSetupCurrentTime(reloj, hora_inicial);
    
    uint16_t contador_F1 = 0;
    uint16_t contador_F2 = 0;
    hora_t hora_en_edicion = {0, 0, 0, 0, 0, 0};
    hora_t alarma_en_edicion = {0, 0, 0, 0, 0, 0};

    // Configuración del SysTick a una frecuencia de interrupción de 1 kHz (1 ms)
    SysTick_Config(SystemCoreClock / 1000);
    __enable_irq();

    while (true) {
        hora_t hora_actual;
        uint8_t *hora_display;

        bool valid_time = RelojGetCurrentTime(reloj, hora_actual);

        // 1. Enrutamiento de la hora en pantalla
        if (modo == MODO_MINUTOS || modo == MODO_HORAS) {
            hora_display = hora_en_edicion;
        } else if (modo == MODO_MINUTOS_ALARMA || modo == MODO_HORAS_ALARMA) {
            hora_display = alarma_en_edicion;
        } else {
            hora_display = hora_actual;
        }

        // 2. Actualización física de los dígitos y puntos decimales
        if (valid_time || modo > MODO_NORMAL) {
            DisplayWriteBCD(mi_pantalla, hora_display, 4);
            
            hora_t alarma_temp;
            if (RelojGetAlarm(reloj, alarma_temp)) {
                DisplaySetDots(mi_pantalla, 3, 3); // Punto del dígito 0 indica alarma encendida
            } else if (modo != MODO_MINUTOS_ALARMA && modo != MODO_HORAS_ALARMA) {
                DisplayClearDots(mi_pantalla, 3, 3);
            }
        }

        // 3. Temporizador de Inactividad (AFK)
        if (modo > MODO_NORMAL) {
            if (contador_AFK >= TIEMPO_AFK_MS) { // 30000 milisegundos = 30 segundos
                CambiarModo((modo <= MODO_HORAS) ? ultimo_modo : MODO_NORMAL);

                contador_AFK = 0;
                tiempo_antirrebote = ANTIRREBOTE_CORTO_MS;
            }
        } else {
            contador_AFK = 0;
        }

        // 4. Deteccion de pulso largo F1 y F2
        if (modo == MODO_NORMAL || modo == MODO_SIN_AJUSTAR) {
            if (DigitalInputGetState(placa->tecla_F1)) {
                contador_F1++;
                if (contador_F1 >= TIEMPO_PULSACION_LARGA_MS) { 
                    ultimo_modo = modo;
                    CambiarModo(MODO_MINUTOS);
                    tiempo_antirrebote = ANTIRREBOTE_LARGO_MS; 
                    contador_F1 = 0;

                    if (valid_time) memcpy(hora_en_edicion, hora_actual, sizeof(hora_t));
                    else memset(hora_en_edicion, 0, sizeof(hora_t));
                }
            } else {
                contador_F1 = 0;
            }

            if (modo == MODO_NORMAL) {
                if (DigitalInputGetState(placa->tecla_F2)) {
                    contador_F2++;
                    if (contador_F2 >= TIEMPO_PULSACION_LARGA_MS) {
                        CambiarModo(MODO_MINUTOS_ALARMA);
                        tiempo_antirrebote = ANTIRREBOTE_LARGO_MS;
                        contador_F2 = 0;
                        (void)RelojGetAlarm(reloj, alarma_en_edicion);
                    }
                } else {
                    contador_F2 = 0;
                }
            }
        }

        // 5. Máquina de estados principal gobernada por eventos de teclado (Post-Antirrebote)
        if (tiempo_antirrebote == 0) {
            bool tecla_presionada = false;

            switch (modo) {
            case MODO_SIN_AJUSTAR:
                break;
             case MODO_NORMAL:
                if (alarma_sonando) {
                    if (DigitalInputHasActivated(placa->tecla_aceptar)) {
                        RelojSnoozeAlarm(reloj, TIEMPO_SNOOZE_SEG); // Pospone la alarma por 5 minutos (300 segundos)
                        alarma_sonando = false;
                        DigitalOutputDeactivate(mi_led);
                        tecla_presionada = true;
                    }
                    if (DigitalInputHasActivated(placa->tecla_cancelar)) {
                        RelojCancelAlarm(reloj);    // Apaga la alarma hasta el próximo ciclo diario
                        alarma_sonando = false;
                        DigitalOutputDeactivate(mi_led);
                        tecla_presionada = true;
                    }
                }
                if (DigitalInputHasActivated(placa->tecla_aceptar)) {
                    RelojEnableAlarm(reloj);
                    tecla_presionada = true;
                } else if (DigitalInputHasActivated(placa->tecla_cancelar)) {
                    RelojDisableAlarm(reloj);
                    tecla_presionada = true;
                }
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
                if (DigitalInputHasActivated(placa->tecla_F1)) {
                    IncrementarBCD(&alarma_en_edicion[2], LIMITE_MINUTOS);
                    tecla_presionada = true;
                }
                if (DigitalInputHasActivated(placa->tecla_F2)) {
                    DecrementarBCD(&alarma_en_edicion[2], LIMITE_MINUTOS);
                    tecla_presionada = true;
                }
                if (DigitalInputHasActivated(placa->tecla_aceptar)) {
                    CambiarModo(MODO_HORAS_ALARMA);
                    tecla_presionada = true;
                }
                if (DigitalInputHasActivated(placa->tecla_cancelar)) {
                    CambiarModo(MODO_NORMAL);
                    tecla_presionada = true;
                }
                break;
            case MODO_HORAS_ALARMA:
                if (DigitalInputHasActivated(placa->tecla_F3)) {
                    IncrementarBCD(&alarma_en_edicion[0], LIMITE_HORAS);
                    tecla_presionada = true;
                }
                if (DigitalInputHasActivated(placa->tecla_F4)) {
                    DecrementarBCD(&alarma_en_edicion[0], LIMITE_HORAS);
                    tecla_presionada = true;
                }
                if (DigitalInputHasActivated(placa->tecla_aceptar)) {
                    RelojSetupAlarm(reloj, alarma_en_edicion);
                    CambiarModo(MODO_NORMAL);
                    tecla_presionada = true;
                }
                if (DigitalInputHasActivated(placa->tecla_cancelar)) {
                    CambiarModo(MODO_NORMAL);
                    tecla_presionada = true;
                }
                break;
            default:
                break;
            }

            if (tecla_presionada) {
                tiempo_antirrebote = ANTIRREBOTE_CORTO_MS;
                contador_AFK = 0;
            }
        }
        // Suspende la CPU hasta el arribo de la próxima interrupción del SysTick
        __asm volatile ("wfi");
    }

    return 0;
}

/**
 * @brief Interrupción del temporizador del sistema (SysTick) - Frecuencia: 1 kHz (1 ms).
 * @note Esta ISR se encarga exclusivamente del refresco físico del hardware multiplexado
 * y del avance de los contadores temporales, delegando la lógica pesada al lazo principal.
 */
void SysTick_Handler(void) {
    static uint16_t contador_puntos = 0;

    // Refresca el siguiente dígito del display de 7 segmentos (Barrido Multiplexado)
    DisplayRefresh(mi_pantalla);

    // Avanza la base de tiempo interna de la lógica del reloj si ya fue sincronizado
    if (reloj_iniciado) {
        RelojNewTick(reloj);
    }

    // Decrementa el tiempo de bloqueo de lectura para el filtrado de rebotes mecánicos
    if (tiempo_antirrebote > 0) {
        tiempo_antirrebote--;
    }

    // Incrementa el tiempo de inactividad si no se está en modo de operación normal
    if (modo > MODO_NORMAL) {
        contador_AFK++;
    } else {
        contador_AFK = 0;
    }

    // Destello asincrónico del punto de segundos cada 500 ms (Solo en Modo Normal)
    contador_puntos = (contador_puntos + 1) % 1000;
    if (modo == MODO_NORMAL) {
        if ((contador_puntos == 0) || (contador_puntos == 500)) {
            DisplayToggleDots(mi_pantalla, 1, 1);
        }
    }
}

/* === End of documentation ==================================================================== */

/** @} End of module definition for doxygen */
