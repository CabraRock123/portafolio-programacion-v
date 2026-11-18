
import os

fn main() {
    println('ENCONTRAR EL NUMERO QUE MAS SE REPITE')

    // Preguntamos cuantos numeros vamos a utilizar.
    cantidad := os.input('Cuantos numeros deseas ingresar: ').int()

    if cantidad <= 0 {
        println('Error: debes ingresar una cantidad mayor que cero.')
        return
    }

    // Creamos un arreglo vacio para guardar los numeros.
    mut numeros := []int{}

    // Guardamos los numeros ingresados.
    for i := 0; i < cantidad; i++ {
        valor := os.input('Ingresa el numero ${i + 1}: ').int()
        numeros << valor
    }

    // Buscamos el numero que tenga mas repeticiones.
    mut numero_repetido := numeros[0]
    mut repeticiones_maximas := 0

    for numero in numeros {
        mut contador := 0

        for otro_numero in numeros {
            if numero == otro_numero {
                contador++
            }
        }

        if contador > repeticiones_maximas {
            repeticiones_maximas = contador
            numero_repetido = numero
        }
    }

    // Mostramos el resultado.
    println('\nEl arreglo es: ${numeros}')

    if repeticiones_maximas > 1 {
        println('El numero que mas se repite es: ${numero_repetido}')
        println('Aparece ${repeticiones_maximas} veces.')
    } else {
        println('Ningun numero se repite.')
    }
}
