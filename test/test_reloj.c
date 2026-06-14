// ‣ Después de n ciclos de reloj la hora avanza un segundo, diez
// segundos, un minutos, diez minutos, una hora, diez horas y
// un día completo.
// ‣ Fijar la hora de la alarma y consultarla.
// ‣ Fijar la alarma y avanzar el reloj para que suene.
// ‣ Fijar la alarma, deshabilitarla y avanzar el reloj para no
// suene.
// ‣ Hacer sonar la alarma y posponerla.
// ‣ Hacer sonar la alarma y cancelarla hasta el otro dia..

#include "unity.h"
#include "reloj.h"

static const hora_t HORA_DEFAULT = {0, 0, 0, 0, 0, 0};
static const hora_t HORA_INICIAL = {2, 3, 5, 9, 5, 9};

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