import os
import strconv

fn main() {
    input1 := os.input('Ingresa el primer número: ')
    num1 := strconv.atoi(input1) or {
        println('Número no válido.')
        return
    }

    input2 := os.input('Ingresa el segundo número: ')
    num2 := strconv.atoi(input2) or {
        println('Número no válido.')
        return
    }

    input_op := os.input('Elige una operación (1 = suma, 2 = resta, 3 = multiplicación, 4 = división): ')
    op := strconv.atoi(input_op) or {
        println('Opción no válida.')
        return
    }

    if op == 1 {
        println('Resultado: ${num1 + num2}')
    } else if op == 2 {
        println('Resultado: ${num1 - num2}')
    } else if op == 3 {
        println('Resultado: ${num1 * num2}')
    } else if op == 4 {
        if num2 == 0 {
            println('No se puede dividir entre cero.')
        } else {
            println('Resultado: ${num1 / num2}')
        }
    } else {
        println('La opción no es válida.')
    }
}
