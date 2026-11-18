
import os

fn main() {
    println('ORDENAR NUMEROS DE MENOR A MAYOR')

    // Pedimos cuantos numeros vamos a ordenar.
    cantidad := os.input('Cuantos numeros deseas ingresar: ').int()

    if cantidad <= 0 {
        println('Error: ingresa una cantidad mayor que cero.')
        return
    }

    // Creamos el arreglo.
    mut numeros := []int{}

    // Guardamos los numeros ingresados.
    for i := 0; i < cantidad; i++ {
        valor := os.input('Ingresa un numero: ').int()
        numeros << valor
    }

    // Ordenamos los numeros.
    for i := 0; i < numeros.len; i++ {
        for j := 0; j < numeros.len - 1 - i; j++ {
            if numeros[j] > numeros[j + 1] {
                temporal := numeros[j]
                numeros[j] = numeros[j + 1]
                numeros[j + 1] = temporal
            }
        }
    }

    // Mostramos el arreglo ordenado.
    println('\nNumeros ordenados de menor a mayor:')

    for numero in numeros {
        print('${numero} ')
    }

    println('')
}
