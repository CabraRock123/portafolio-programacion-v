import os

fn main() {
    n := os.input('Ingresa un Numero').int()

    mut suma := 0
    mut operacion := ''

    for i := 1; i <= n; i++ {
        suma += i
        operacion += '${i}'

        if i < n {
            operacion += ' + '
        }
    }

    println('${operacion} = ${suma}')
}