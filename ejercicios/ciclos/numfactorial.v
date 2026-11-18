import os

fn main() {
    // Pedir un numero al usuario
    n := os.input('Dame un numero: ').int()

    // Verificar que el numero no sea negativo
    if n < 0 {
        println('No se puede calcular el factorial de un numero negativo')
    } else {
        // Inicializar la variable que guarda el factorial
        mut factorial := 1

        // Multiplicar los numeros desde 1 hasta n
        for i := 1; i <= n; i++ {
            factorial *= i
        }

        // Mostrar el resultado final
        println('El factorial de ${n} es: ${factorial}')
    }
}