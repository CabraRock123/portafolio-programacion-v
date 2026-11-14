import os

fn main() {
    println('--- Cálculo de Calificación Ponderada ---')

    // 1. Entrada de datos
    e1_str := os.input('Ingresa calificación del Examen 1 (20%): ')
    e1 := e1_str.trim_space().f64()

    e2_str := os.input('Ingresa calificación del Examen 2 (25%): ')
    e2 := e2_str.trim_space().f64()

    e3_str := os.input('Ingresa calificación del Examen 3 (25%): ')
    e3 := e3_str.trim_space().f64()

    e4_str := os.input('Ingresa calificación del Examen 4 (30%): ')
    e4 := e4_str.trim_space().f64()

    // 2. Proceso
    calificacion_final := (e1 * 0.20) + (e2 * 0.25) + (e3 * 0.25) + (e4 * 0.30)

    // 3. Salida
    println('\n--- Resultado ---')
    println("La calificación final ponderada es: ${calificacion_final:.2f}")
}
