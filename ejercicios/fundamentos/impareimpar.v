
import os
import strconv

fn main() {
    input_str := os.input('Ingresa un número entero: ')
    num := strconv.atoi(input_str) or {
        println('Por favor, ingresa un número entero válido.')
        return
    }

    if num % 2 == 0 {
        println('El número ${num} es par.')
    } else {
        println('El número ${num} es impar.')
    }
}
