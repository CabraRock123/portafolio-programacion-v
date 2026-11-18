import time

fn main() {
    // Iniciar la cuenta regresiva desde 10 hasta 1
    for i := 10; i >= 1; i-- {

        // Mostrar el numero actual
        println(i)

        // Esperar un segundo antes de continuar
        time.sleep(1 * time.second)
    }

    // Mostrar el mensaje al terminar la cuenta regresiva
    println('¡Despegue🚀!')
}