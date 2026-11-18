// ==========================================
// Programa: Ordenar tres números enteros de mayor a menor
// Lenguaje: V (vlang)
// Descripción: Solicita tres números enteros,
// valida que sean correctos y los muestra
// ordenados de forma descendente.
// ==========================================

import os
import strconv

fn main() {
    // Solicitar el primer número entero
    input1 := os.input('Ingresa el primer número: ')
    a := strconv.atoi(input1) or {
        println('Por favor, ingresa un número entero válido.')
        return
    }

    // Solicitar el segundo número entero
    input2 := os.input('Ingresa el segundo número: ')
    b := strconv.atoi(input2) or {
        println('Por favor, ingresa un número entero válido.')
        return
    }

    // Solicitar el tercer número entero
    input3 := os.input('Ingresa el tercer número: ')
    c := strconv.atoi(input3) or {
        println('Por favor, ingresa un número entero válido.')
        return
    }

    println('\nNúmeros ordenados de mayor a menor:')

    // Estructuras condicionales para ordenar de mayor a menor
    if a >= b && a >= c {
        if b >= c {
            println('${a}, ${b}, ${c}')
        } else {
            println('${a}, ${c}, ${b}')
        }
    } else if b >= a && b >= c {
        if a >= c {
            println('${b}, ${a}, ${c}')
        } else {
            println('${b}, ${c}, ${a}')
        }
    } else {
        if a >= b {
            println('${c}, ${a}, ${b}')
        } else {
            println('${c}, ${b}, ${a}')
        }
    }
}
