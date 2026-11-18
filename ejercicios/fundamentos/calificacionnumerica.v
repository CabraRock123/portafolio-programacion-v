// ==========================================
// Programa: Calificación con Letra
// Lenguaje: V (vlang)
// Descripción: Este programa solicita al usuario
// una calificación numérica (admite enteros y decimales),
// valida que esté dentro del rango de 0 a 100,
// y determina la letra correspondiente.
// ==========================================

import os
import strconv

fn main() {
    // Solicita la calificación al usuario por consola
    input_str := os.input('Ingresa una calificación numérica del 0 al 100: ')

    // Convierte el texto ingresado a un número de tipo f64 (decimal)
    nota := strconv.atof64(input_str) or {
        println('Por favor, ingresa un número válido.')
        return
    }

    // Valida que la calificación esté dentro del rango permitido (0 a 100)
    if nota < 0 || nota > 100 {
        println('Error: La calificación debe estar entre 0 y 100.')
        return
    }

    // Estructura condicional para evaluar los rangos de la calificación
    if nota >= 90 {
        println('La letra correspondiente es: A')
    } else if nota >= 80 {
        println('La letra correspondiente es: B')
    } else if nota >= 70 {
        println('La letra correspondiente es: C')
    } else if nota >= 60 {
        println('La letra correspondiente es: D')
    } else {
        println('La letra correspondiente es: F')
    }
}
