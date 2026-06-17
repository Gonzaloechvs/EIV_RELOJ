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

/** @file reloj.c
 ** @brief Implementacion de la clase reloj
 **/

/* === Headers files inclusions ================================================================ */

#include "reloj.h"
#include <string.h>

/* === Macros definitions ====================================================================== */

/* === Private data type declarations ========================================================== */

struct clock_s {
    hora_t current_time;
    unsigned int ticks_per_second;
    unsigned int ticks_count;
    bool time_is_valid;
};

/* === Private function declarations =========================================================== */

int SumaAcarreo(uint8_t *decena, uint8_t *unidad, uint8_t limite);

/* === Private variable definitions ============================================================ */

/* === Public variable definition  ============================================================= */

/* === Private function definitions ============================================================ */

int SumaAcarreo(uint8_t *decena, uint8_t *unidad, uint8_t limite){
    uint8_t cuenta = (*decena) * 10 + (*unidad);
    cuenta++;
    int acarreo = 0; 
    if (cuenta==limite){
        cuenta=0;
        acarreo++;
    }
    *decena = cuenta / 10;
    *unidad = cuenta % 10;
    return acarreo;
}

/* === Public function implementation ========================================================== */

clock_t RelojCreate(unsigned int ticks_per_second, void * alarm_handler){
    static struct clock_s instance;
    clock_t self = &instance;

    self->time_is_valid = false;
    memset(self->current_time, 0, sizeof(hora_t));
    self->ticks_count = 0;
    self->ticks_per_second = ticks_per_second;

    return self;
}

bool RelojGetCurrentTime(clock_t self, hora_t current_time){
    memcpy(current_time, self->current_time, sizeof(hora_t));
    return self->time_is_valid;
}

bool RelojSetupCurrentTime(clock_t self, const hora_t current_time){
    memcpy(self->current_time, current_time, sizeof(hora_t));
    self->time_is_valid = true;
    return true;
}

void RelojNewTick(clock_t self){
    self->ticks_count++;
    if((self->ticks_count % self->ticks_per_second) == 0){

        /* segundos */
        int acarreo_minutos = SumaAcarreo(&self->current_time[4], &self->current_time[5], 60);

        /* minutos */
        if(acarreo_minutos > 0) {
            int acarreo_horas = SumaAcarreo(&self->current_time[2], &self->current_time[3], 60);
            acarreo_minutos -= 1;

            /* horas */
            if(acarreo_horas > 0) {
                (void)SumaAcarreo(&self->current_time[0], &self->current_time[1], 24);
                acarreo_horas -= 1;
                self->ticks_count=0;

            }
        }
    }
}

/* === End of documentation ==================================================================== */
