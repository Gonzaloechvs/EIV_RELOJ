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

#define UNITS_PER_TEN       10U
#define SECONDS_PER_MINUTE  60U
#define MINUTES_PER_HOUR     60U
#define HOURS_PER_DAY       24U
#define SECONDS_PER_DAY     (SECONDS_PER_MINUTE * MINUTES_PER_HOUR * HOURS_PER_DAY)

/* === Private data type declarations ========================================================== */

struct clock_s {
    uint32_t current_time;
    uint32_t alarm;
    unsigned int ticks_per_second;
    unsigned int ticks_count;
    bool time_is_valid;
    bool alarm_enabled;
    void (*alarm_handler)(void);
};

/* === Private function declarations =========================================================== */

static uint32_t TimetoSeconds(const hora_t time);

static void SecondstoTime(uint32_t seconds, hora_t time);

/* === Private variable definitions ============================================================ */

/* === Public variable definition  ============================================================= */

/* === Private function definitions ============================================================ */

static uint32_t TimetoSeconds(const hora_t time){
    uint32_t horas_en_segundos = (time[0] * UNITS_PER_TEN + time[1]) * MINUTES_PER_HOUR * SECONDS_PER_MINUTE;
    uint32_t minutos_en_segundos = (time[2] * UNITS_PER_TEN + time[3]) * SECONDS_PER_MINUTE;
    uint32_t segundos = (time[4] * UNITS_PER_TEN + time[5]);

    return horas_en_segundos + minutos_en_segundos + segundos;
}

static void SecondstoTime(uint32_t seconds, hora_t time){
    uint32_t h = seconds / (MINUTES_PER_HOUR * SECONDS_PER_MINUTE);
    uint32_t m = (seconds % (MINUTES_PER_HOUR * SECONDS_PER_MINUTE)) / SECONDS_PER_MINUTE;
    uint32_t s = seconds % SECONDS_PER_MINUTE;

    time[0] = h / UNITS_PER_TEN;
    time[1] = h % UNITS_PER_TEN;
    time[2] = m / UNITS_PER_TEN;
    time[3] = m % UNITS_PER_TEN;
    time[4] = s / UNITS_PER_TEN;
    time[5] = s % UNITS_PER_TEN;
}

/* === Public function implementation ========================================================== */

clock_t RelojCreate(unsigned int ticks_per_second, void * alarm_handler){
    static struct clock_s instance;
    clock_t self = &instance;
    self->time_is_valid = false;
    self->current_time = 0;
    self->ticks_count = 0;
    self->ticks_per_second = ticks_per_second;
    self->alarm_enabled = false;
    self->alarm_handler = (void (*)(void))alarm_handler;

    return self;
}

bool RelojGetCurrentTime(clock_t self, hora_t current_time){
    SecondstoTime(self->current_time, current_time);
    return self->time_is_valid;
}

bool RelojSetupCurrentTime(clock_t self, const hora_t current_time){
    self->current_time = TimetoSeconds(current_time);
    self->time_is_valid = true;
    return true;
}

void RelojNewTick(clock_t self){
    self->ticks_count++;
    if(self->ticks_count < self->ticks_per_second){
        return;
    }
    self->ticks_count=0;
    self->current_time++;
    if(self->current_time == SECONDS_PER_DAY){
        self->current_time = 0;
    }

    if ((self->alarm_handler != NULL) && self->alarm_enabled && (self->current_time == self->alarm)){
        self->alarm_handler();
    }
}

bool RelojSetupAlarm(clock_t self, const hora_t alarm){
    if(self->time_is_valid){
        self->alarm = TimetoSeconds(alarm);
        self->alarm_enabled = true;
    }
    return self->alarm_enabled;
}

bool RelojGetAlarm(clock_t self, hora_t alarm){
    SecondstoTime(self->alarm, alarm);
    return self->alarm_enabled;
}

void ToggleAlarm(clock_t self){
    self->alarm_enabled = !self->alarm_enabled;
}

bool RelojSnoozeAlarm(clock_t self, uint32_t snooze_time){
    self->alarm = self->alarm + snooze_time;
    return true;
}


/* === End of documentation ==================================================================== */
