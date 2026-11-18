
import os

fn main() {
    x := os.input("Ingresa un número: ").int()

    for i := 1; i <= x; i++ {
        mut linea := ''

        // Agregar los espacios al inicio
        for espacios := 1; espacios <= x - i; espacios++ {
            linea += ' '
        }

        // Agregar los asteriscos
        for asteriscos := 1; asteriscos <= i; asteriscos++ {
            linea += '*'
        }

        // Imprimir la fila completa
        println(linea)
    }
}
