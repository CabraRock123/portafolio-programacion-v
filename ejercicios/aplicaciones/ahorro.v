import os

// Función que calcula los ahorros semanales.
fn ejercicio_ahorros() {

    // Pedimos cuánto ahorra la persona la primera semana.
    ahorro_inicial := os.input('¿Cuánto ahorrarás la primera semana? $ ').f64()

    // Pedimos cuánto aumentará el ahorro cada semana.
    incremento := os.input('¿Cuánto aumentarás tu ahorro cada semana? $ ').f64()

    // Pedimos la meta de ahorro que se quiere alcanzar.
    meta := os.input('¿Cuál es tu meta de ahorro? $ ').f64()

    // Comprobamos que los datos sean positivos.
    if ahorro_inicial <= 0 || incremento <= 0 || meta <= 0 {
        println('Error: las cantidades deben ser mayores que cero.')
        return
    }

    // Iniciamos el acumulado en cero.
    mut acumulado := 0.0

    // Guardaremos la semana en la que se alcanza la meta.
    mut semana_meta := 0

    // Repetimos mientras el acumulado sea menor que la meta.
    for semana := 1; acumulado < meta; semana++ {

        // Calculamos cuánto ahorrará durante esta semana.
        ahorro_semana := ahorro_inicial + f64(semana - 1) * incremento

        // Sumamos el ahorro semanal al acumulado.
        acumulado += ahorro_semana

        // Mostramos el ahorro y el acumulado de esta semana.
        println('Semana ${semana}: ahorro $${ahorro_semana:.2f}, acumulado $${acumulado:.2f} ')

        // Comprobamos si ya alcanzó la meta.
        if acumulado >= meta {
            semana_meta = semana
        }
    }

    // Mostramos en qué semana se alcanzó la meta.
    println('')
    println('¡Meta alcanzada!')
    println('Semana en que se alcanzó: ${semana_meta}')
    println('Ahorro acumulado: $${acumulado:.2f}')
}

// Función principal del programa.
fn main() {
    ejercicio_ahorros()
}