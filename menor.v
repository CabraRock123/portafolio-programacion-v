
import os

fn main() {
    println('SUMA DE DOS MATRICES')

    // Pedimos las dimensiones.
    filas := os.input('Cuantas filas tendran las matrices? ').int()
    columnas := os.input('Cuantas columnas tendran las matrices? ').int()

    // Verificamos que las dimensiones sean validas.
    if filas <= 0 || columnas <= 0 {
        println('Error: las dimensiones deben ser mayores que cero.')
        return
    }

    // Creamos las matrices.
    mut matriz_a := [][]int{len: filas, init: []int{len: columnas}}
    mut matriz_b := [][]int{len: filas, init: []int{len: columnas}}
    mut resultado := [][]int{len: filas, init: []int{len: columnas}}

    // Capturamos los valores de la primera matriz.
    println('\nValores de la primera matriz:')

    for i := 0; i < filas; i++ {
        for j := 0; j < columnas; j++ {
            matriz_a[i][j] = os.input('A[${i}][${j}]: ').int()
        }
    }

    // Capturamos los valores de la segunda matriz.
    println('\nValores de la segunda matriz:')

    for i := 0; i < filas; i++ {
        for j := 0; j < columnas; j++ {
            matriz_b[i][j] = os.input('B[${i}][${j}]: ').int()
        }
    }

    // Sumamos las dos matrices.
    for i := 0; i < filas; i++ {
        for j := 0; j < columnas; j++ {
            resultado[i][j] = matriz_a[i][j] + matriz_b[i][j]
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

    // Mostramos el resultado de la suma.
    println('\nResultado de la suma:')

    for i := 0; i < filas; i++ {
        for j := 0; j < columnas; j++ {
            print('${resultado[i][j]} ')
        }
        println('')
    }
}
