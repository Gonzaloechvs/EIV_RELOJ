
#include "unity.h"
#include "reloj.h"

static const hora_t HORA_DEFAULT = {0, 0, 0, 0, 0, 0};
static const hora_t HORA_INICIAL = {1, 2, 3, 4, 5, 6};
static const hora_t HORA_ALARMA = {0, 5, 0, 0, 0, 0};

// Variable global o estática para capturar si el handler fue llamado
static bool alarm_triggered = false;

// Función handler que será llamada cuando suene la alarma
static void alarm_callback(void) {
    alarm_triggered = true;
}


#define TICK_PER_SECOND 3
#define ONE_SECOND TICK_PER_SECOND
#define TEN_SECONDS (10 * TICK_PER_SECOND)
#define ONE_MINUTE (60 * TICK_PER_SECOND)
#define TEN_MINUTES (10 * ONE_MINUTE)
#define ONE_HOUR (60 * ONE_MINUTE)
#define TEN_HOURS (10 * ONE_HOUR)
#define ONE_DAY (24 * ONE_HOUR)


void SimulateClockTicks(clock_t reloj, unsigned int ticks) {
    for (int i = 0; i < ticks; i++) {
        RelojNewTick(reloj);
    }
}

// ‣ Probar que el create no devuelva algo nulo
void test_reloj_creacion_exitosa(void) {
    clock_t reloj;
    
    reloj = RelojCreate(1, NULL);
    
    // Verificamos que el puntero devuelto exista y no sea NULL
    TEST_ASSERT_NOT_NULL(reloj);
}

// ‣ Al inicializar el reloj está en 00:00 y con hora invalida.
void test_reloj_inicia_invalido(void) {
    clock_t reloj;
    hora_t hora_actual = {1, 2, 3, 4, 5, 6};
    
    reloj = RelojCreate(1, NULL);
    // La funcion devuelve FALSE porque la hora es invalida
    TEST_ASSERT_FALSE(RelojGetCurrentTime(reloj, hora_actual));
    TEST_ASSERT_EQUAL_UINT8_ARRAY(HORA_DEFAULT, hora_actual, 6);
}

// ‣ Al ajustar la hora el reloj queda en hora y es válida.
void test_reloj_ajusta_hora(void) {
    clock_t reloj;
    hora_t hora_actual;
    
    reloj = RelojCreate(1, NULL);
    TEST_ASSERT_TRUE(RelojSetupCurrentTime(reloj, HORA_INICIAL));
    // La funcion devuelve TRUE porque la hora es válida
    TEST_ASSERT_TRUE(RelojGetCurrentTime(reloj, hora_actual));
    TEST_ASSERT_EQUAL_UINT8_ARRAY(HORA_INICIAL, hora_actual, 6);
}

// ‣ Probar que no se pone en hora si el argumento es nulo
void test_reloj_ignora_hora_nula(void) {
    clock_t reloj;
    hora_t hora_actual;

    reloj = RelojCreate(TICK_PER_SECOND, NULL);

    // Intentamos configurar la hora pasándole NULL como argumento
    TEST_ASSERT_FALSE(RelojSetupCurrentTime(reloj, NULL));

    // Verificamos que el reloj protegió su estado y sigue siendo inválido
    TEST_ASSERT_FALSE(RelojGetCurrentTime(reloj, hora_actual));
}

// ‣ Después de n ciclos de reloj la hora avanza un segundo, diez
// segundos, un minutos, diez minutos, una hora, diez horas y
// un día completo.

// ‣ Después de n ciclos de reloj la hora avanza un segundo
void test_avanza_un_segundo(void) {
    clock_t reloj;
    hora_t hora_actual;
    static const hora_t HORA_ESPERADA = {1, 2, 3, 4, 5, 7};
    
    reloj = RelojCreate(TICK_PER_SECOND, NULL);
    (void)RelojSetupCurrentTime(reloj, HORA_INICIAL);
    SimulateClockTicks(reloj, (ONE_SECOND));
    RelojGetCurrentTime(reloj, hora_actual);
    TEST_ASSERT_EQUAL_UINT8_ARRAY(HORA_ESPERADA, hora_actual, 6);
}

// ‣ Después de n ciclos de reloj la hora avanza diez segundos
void test_avanza_diez_segundos(void) {
    clock_t reloj;
    hora_t hora_actual;
    static const hora_t HORA_ESPERADA = {1, 2, 3, 5, 0, 6};
    
    reloj = RelojCreate(TICK_PER_SECOND, NULL);
    (void)RelojSetupCurrentTime(reloj, HORA_INICIAL);
    SimulateClockTicks(reloj, TEN_SECONDS);
    RelojGetCurrentTime(reloj, hora_actual);
    TEST_ASSERT_EQUAL_UINT8_ARRAY(HORA_ESPERADA, hora_actual, 6);
}

// ‣ Después de n ciclos de reloj la hora avanza un minuto
void test_avanza_un_minuto(void) {
    clock_t reloj;
    hora_t hora_actual;
    static const hora_t HORA_ESPERADA = {1, 2, 3, 5, 5, 6};
    
    reloj = RelojCreate(TICK_PER_SECOND, NULL);
    (void)RelojSetupCurrentTime(reloj, HORA_INICIAL);
    SimulateClockTicks(reloj, ONE_MINUTE);
    RelojGetCurrentTime(reloj, hora_actual);
    TEST_ASSERT_EQUAL_UINT8_ARRAY(HORA_ESPERADA, hora_actual, 6);
}

// ‣ Después de n ciclos de reloj la hora avanza diez minutos
void test_avanza_diez_minutos(void) {
    clock_t reloj;
    hora_t hora_actual;
    static const hora_t HORA_ESPERADA = {1, 2, 4, 4, 5, 6};
    
    reloj = RelojCreate(TICK_PER_SECOND, NULL);
    (void)RelojSetupCurrentTime(reloj, HORA_INICIAL);
    SimulateClockTicks(reloj, TEN_MINUTES);
    RelojGetCurrentTime(reloj, hora_actual);
    TEST_ASSERT_EQUAL_UINT8_ARRAY(HORA_ESPERADA, hora_actual, 6);
}

// ‣ Después de n ciclos de reloj la hora avanza una hora
void test_avanza_una_hora(void) {
    clock_t reloj;
    hora_t hora_actual;
    static const hora_t HORA_ESPERADA = {1, 3, 3, 4, 5, 6};
    
    reloj = RelojCreate(TICK_PER_SECOND, NULL);
    (void)RelojSetupCurrentTime(reloj, HORA_INICIAL);
    SimulateClockTicks(reloj, ONE_HOUR);
    RelojGetCurrentTime(reloj, hora_actual);
    TEST_ASSERT_EQUAL_UINT8_ARRAY(HORA_ESPERADA, hora_actual, 6);
}

// ‣ Después de n ciclos de reloj la hora avanza diez horas
void test_avanza_diez_horas(void) {
    clock_t reloj;
    hora_t hora_actual;
    static const hora_t HORA_ESPERADA = {2, 2, 3, 4, 5, 6};
    
    reloj = RelojCreate(TICK_PER_SECOND, NULL);
    (void)RelojSetupCurrentTime(reloj, HORA_INICIAL);
    SimulateClockTicks(reloj, TEN_HOURS);
    RelojGetCurrentTime(reloj, hora_actual);
    TEST_ASSERT_EQUAL_UINT8_ARRAY(HORA_ESPERADA, hora_actual, 6);
}

// ‣ Después de n ciclos de reloj la hora avanza un día
void test_avanza_un_dia(void) {
    clock_t reloj;
    hora_t hora_actual;

    reloj = RelojCreate(TICK_PER_SECOND, NULL);
    (void)RelojSetupCurrentTime(reloj, HORA_INICIAL);
    SimulateClockTicks(reloj, ONE_DAY);
    RelojGetCurrentTime(reloj, hora_actual);
    TEST_ASSERT_EQUAL_UINT8_ARRAY(HORA_INICIAL,hora_actual, 6);
}

// ‣ Fijar la hora de la alarma y consultarla (requiere reloj en hora).
void test_consulta_alarma(void) {
    clock_t reloj;
    hora_t alarma_ajustada;

    reloj = RelojCreate(TICK_PER_SECOND, NULL);
    TEST_ASSERT_TRUE(RelojSetupCurrentTime(reloj, HORA_INICIAL));
    TEST_ASSERT_TRUE(RelojSetupAlarm(reloj, HORA_ALARMA));
    TEST_ASSERT_TRUE(RelojGetAlarm(reloj, alarma_ajustada));
    TEST_ASSERT_EQUAL_UINT8_ARRAY(HORA_ALARMA, alarma_ajustada, 6);
}

// ‣ La alarma no debe poder ajustarse si el reloj no está en hora.
void test_alarm_rechazada_si_reloj_invalido(void) {
    clock_t reloj;

    reloj = RelojCreate(TICK_PER_SECOND, NULL);
    TEST_ASSERT_FALSE(RelojSetupAlarm(reloj, HORA_ALARMA));
}

// ‣ Fijar la alarma y avanzar el reloj para que suene.
void test_alarm_suena_cuando_se_alcanza_hora(void) {
    clock_t reloj;
    alarm_triggered = false;
    
    reloj = RelojCreate(TICK_PER_SECOND, alarm_callback);
    (void)RelojSetupCurrentTime(reloj, HORA_DEFAULT);
    TEST_ASSERT_TRUE(RelojSetupAlarm(reloj, HORA_ALARMA));
    
    SimulateClockTicks(reloj, 5 * ONE_HOUR);
    TEST_ASSERT_TRUE(alarm_triggered);
}

// ‣ Fijar la alarma, deshabilitarla y avanzar el reloj para que no suene.
void test_apagar_la_alarma(void) {
    clock_t reloj;
    hora_t alarma_ajustada;
    alarm_triggered = false;
    
    reloj = RelojCreate(TICK_PER_SECOND, alarm_callback);
    (void)RelojSetupCurrentTime(reloj, HORA_DEFAULT);
    TEST_ASSERT_TRUE(RelojSetupAlarm(reloj, HORA_ALARMA));
    ToggleAlarm(reloj);
    TEST_ASSERT_FALSE(RelojGetAlarm(reloj, alarma_ajustada));
    SimulateClockTicks(reloj, 5 * ONE_HOUR);
    TEST_ASSERT_FALSE(alarm_triggered);
}

// ‣ Hacer sonar la alarma y posponerla.
void test_posponer_la_alarma(void) {
    clock_t reloj;
    alarm_triggered = false;

    reloj = RelojCreate(TICK_PER_SECOND, alarm_callback);
    (void)RelojSetupCurrentTime(reloj, HORA_DEFAULT);
    (void)RelojSetupAlarm(reloj, HORA_ALARMA);

    SimulateClockTicks(reloj, 5 * ONE_HOUR);   // llega la primera alarma
    TEST_ASSERT_TRUE(alarm_triggered);

    alarm_triggered = false;
    TEST_ASSERT_TRUE(RelojSnoozeAlarm(reloj, 5 * 60)); // posponer 5 minutos

    SimulateClockTicks(reloj, 5 * ONE_MINUTE);  // pasan 5 minutos
    TEST_ASSERT_TRUE(alarm_triggered);           // ahora debe sonar de nuevo
}

// ‣ Hacer sonar la alarma y cancelarla hasta el otro dia.
void test_cancelar_la_alarma(void) {
    clock_t reloj;
    alarm_triggered = false;
    
    reloj = RelojCreate(TICK_PER_SECOND, alarm_callback);
    (void)RelojSetupCurrentTime(reloj, HORA_DEFAULT);
    (void)RelojSetupAlarm(reloj, HORA_ALARMA);
    SimulateClockTicks(reloj, 5 * ONE_HOUR);   // llega la primera alarma
    TEST_ASSERT_TRUE(alarm_triggered);
    alarm_triggered = false;
    SimulateClockTicks(reloj, ONE_DAY);
    TEST_ASSERT_TRUE(alarm_triggered);
}

// ‣ Poner alarma, posponerla, cancelara y ver q suene al otro dia a la misma hora del comienzo
void test_posponer_y_cancelar_alarma(void) {
    clock_t reloj;
    alarm_triggered = false;

    reloj = RelojCreate(TICK_PER_SECOND, alarm_callback);
    (void)RelojSetupCurrentTime(reloj, HORA_DEFAULT);
    (void)RelojSetupAlarm(reloj, HORA_ALARMA);

    SimulateClockTicks(reloj, 5 * ONE_HOUR);   // primera alarma
    TEST_ASSERT_TRUE(alarm_triggered);

    alarm_triggered = false;
    TEST_ASSERT_TRUE(RelojSnoozeAlarm(reloj, 5 * 60)); // posponer 5 minutos

    SimulateClockTicks(reloj, 5 * ONE_MINUTE);  // pasan 5 minutos
    TEST_ASSERT_TRUE(alarm_triggered);          // suena de nuevo por el snooze

    RelojCancelAlarm(reloj);    
    alarm_triggered = false;

    SimulateClockTicks(reloj, ONE_DAY - (5 * ONE_MINUTE) - ONE_SECOND);
    TEST_ASSERT_FALSE(alarm_triggered);

    SimulateClockTicks(reloj, ONE_SECOND);    
    TEST_ASSERT_TRUE(alarm_triggered);  
}

// ‣ Al intentar ajustar una hora con valores inválidos, el reloj la rechaza.
void test_rechazar_valores_invalidos(void) {
    clock_t reloj;
    
    // Diferentes casos de error que podrían llegar desde el teclado
    hora_t hora_invalida_horas = {2, 4, 0, 0, 0, 0};   // 24:00:00 (Falla límite de horas)
    hora_t hora_invalida_minutos = {1, 2, 6, 0, 0, 0}; // 12:60:00 (Falla límite de minutos)
    hora_t hora_invalida_segundos = {1, 2, 3, 0, 6, 0};// 12:30:60 (Falla límite de segundos)
    hora_t hora_invalida_bcd = {1, 2, 0, 10, 0, 0};    // 12:0A:00 (Falla por valor BCD > 9)
    
    reloj = RelojCreate(TICK_PER_SECOND, NULL);
    
    // Verificamos que Setup devuelva FALSE para cada una
    TEST_ASSERT_FALSE(RelojSetupCurrentTime(reloj, hora_invalida_horas));
    TEST_ASSERT_FALSE(RelojSetupCurrentTime(reloj, hora_invalida_minutos));
    TEST_ASSERT_FALSE(RelojSetupCurrentTime(reloj, hora_invalida_segundos));
    TEST_ASSERT_FALSE(RelojSetupCurrentTime(reloj, hora_invalida_bcd));
    
    // El reloj debería seguir en su estado original (inválido)
    hora_t hora_actual;
    TEST_ASSERT_FALSE(RelojGetCurrentTime(reloj, hora_actual));
}

// ‣ Si el reloj ya está en hora y se intenta poner una hora inválida, mantiene la hora previa.
// Similar al anterior pero vemos si mantiene la hora anterior no solo el estado anterior.
void test_mantener_hora_si_ajuste_es_invalido(void) {
    clock_t reloj;
    hora_t hora_actual;
    hora_t hora_basura = {2, 5, 0, 0, 0, 0};
    
    reloj = RelojCreate(TICK_PER_SECOND, NULL);
    
    // Lo configuramos con una hora válida
    TEST_ASSERT_TRUE(RelojSetupCurrentTime(reloj, HORA_INICIAL)); 
    
    // Intentamos pisarla con basura y nos aseguramos que de FALSE
    TEST_ASSERT_FALSE(RelojSetupCurrentTime(reloj, hora_basura));
    
    TEST_ASSERT_TRUE(RelojGetCurrentTime(reloj, hora_actual));
    TEST_ASSERT_EQUAL_UINT8_ARRAY(HORA_INICIAL, hora_actual, 6);
}
