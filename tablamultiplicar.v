import os

fn main() {
    // Pedir un numero al usuario
    n := os.input('Dame un numero: ').int()

    // Recorrer los numeros del 1 al 10
    for i := 1; i <= 10; i++ {

        // Mostrar cada multiplicacion y su resultado
        println('${n} x ${i} = ${n * i}')
    }
}