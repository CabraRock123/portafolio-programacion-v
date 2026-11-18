
import os

fn main() {
    // Pedimos las dimensiones de las matrices.
    filas := os.input('Cuantas filas tendran las matrices? ').int()
    columnas := os.input('Cuantas columnas tendran las matrices? ').int()

    // Validamos las dimensiones.
    if filas <= 0 || columnas <= 0 {
        println('Error: las dimensiones deben ser mayores que cero.')
        return
    }

    // Creamos las dos matrices y la matriz resultado.
    mut matriz_a := [][]int{len: filas, init: []int{len: columnas, init: 0}}
    mut matriz_b := [][]int{len: filas, init: []int{len: columnas, init: 0}}
    mut suma := [][]int{len: filas, init: []int{len: columnas, init: 0}}

    // Llenamos la primera matriz.
    println('\nIngrese los valores de la primera matriz:')

    for i := 0; i < filas; i++ {
        for j := 0; j < columnas; j++ {
            matriz_a[i][j] = os.input('A[${i}][${j}]: ').int()
        }
    }

    // Llenamos la segunda matriz.
    println('\nIngrese los valores de la segunda matriz:')

    for i := 0; i < filas; i++ {
        for j := 0; j < columnas; j++ {
            matriz_b[i][j] = os.input('B[${i}][${j}]: ').int()
        }
    }

    // Sumamos las dos matrices.
    for i := 0; i < filas; i++ {
        for j := 0; j < columnas; j++ {
            suma[i][j] = matriz_a[i][j] + matriz_b[i][j]
        }
    }

    // Mostramos la primera matriz.
    println('\nPrimera matriz:')
    for i := 0; i < filas; i++ {
        for j := 0; j < columnas; j++ {
            print('${matriz_a[i][j]} ')
        }
        println('')
    }

    // Mostramos la segunda matriz.
    println('\nSegunda matriz:')
    for i := 0; i < filas; i++ {
        for j := 0; j < columnas; j++ {
            print('${matriz_b[i][j]} ')
        }
        println('')
    }

    // Mostramos la matriz resultante.
    println('\nResultado de la suma:')
    for i := 0; i < filas; i++ {
        for j := 0; j < columnas; j++ {
            print('${suma[i][j]} ')
        }
        println('')
    }
}
