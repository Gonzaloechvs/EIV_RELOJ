// ‣ Fijar la alarma y avanzar el reloj para que suene.
// ‣ Fijar la alarma, deshabilitarla y avanzar el reloj para no
// suene.
// ‣ Hacer sonar la alarma y posponerla.
// ‣ Hacer sonar la alarma y cancelarla hasta el otro dia..
// ‣ Probar que el create no devuelva algo nulo
// ‣ Probar que no se pone en hora si el argumento es nulo
// ‣ Poner alarma, posponerla, cancelara y ver q suene al otro dia a la misma hora del comienzo

#include "unity.h"
#include "reloj.h"

static const hora_t HORA_DEFAULT = {0, 0, 0, 0, 0, 0};
static const hora_t HORA_INICIAL = {1, 2, 3, 4, 5, 6};
static const hora_t HORA_ALARMA = {0, 5, 0, 0, 0, 0};

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
    static const hora_t HORA_ALARMA = {0, 5, 0, 0, 0, 0};

    reloj = RelojCreate(TICK_PER_SECOND, NULL);
    TEST_ASSERT_FALSE(RelojSetupAlarm(reloj, HORA_ALARMA));
}
