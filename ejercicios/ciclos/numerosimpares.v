import os

fn main() {
    // Pedir un numero al usuario
    n := os.input('Dame un numero: ').int()

    // Inicializar la variable acumuladora
    mut suma := 0

    // Guardar la operacion de la suma
    mut operacion := ''

    // Recorrer los numeros desde 1 hasta n
    for i := 1; i <= n; i++ {

        // Verificar si el numero es impar
        if i % 2 != 0 {

            // Acumular el numero impar
            suma += i

            // Agregar el signo + entre los numeros
            if operacion != '' {
                operacion += ' + '
            }

            // Agregar el numero a la operacion
            operacion += '${i}'
        }
    }

    // Mostrar la operacion y el resultado
    println('${operacion} = ${suma}')
}