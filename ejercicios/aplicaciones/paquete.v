import os

// Función que clasifica el tipo de envío.
fn ejercicio_envios() {

    // Pedimos el peso del paquete en kilogramos.
    peso := os.input('¿Cuánto pesa el paquete en kg? ').f64()

    // Pedimos la distancia en kilómetros.
    distancia := os.input('¿Cuál es la distancia en km? ').f64()

    // Preguntamos si el envío es urgente.
    // El usuario debe responder s o n.
    urgente := os.input('¿Es urgente? (s/n): ')

    // Comprobamos que el peso y la distancia sean positivos.
    if peso <= 0 || distancia <= 0 {
        println('Error: el peso y la distancia deben ser mayores que cero.')
        return
    }

    // Comprobamos que la respuesta sea s, S, n o N.
    if urgente != 's' && urgente != 'S'
        && urgente != 'n' && urgente != 'N' {
        println('Error: responde s para sí o n para no.')
        return
    }

    // Si el envío es urgente, se clasifica como express.
    if urgente == 's' || urgente == 'S' {
        println('Tipo de envío: express')
    } else if peso <= 5 && distancia <= 50 {

        // Si no es urgente y cumple ambos límites,
        // se clasifica como local económico.
        println('Tipo de envío: local económico')
    } else {

        // Los demás envíos se clasifican como nacionales estándar.
        println('Tipo de envío: nacional estándar')
    }
}

// Función principal del programa.
fn main() {
    ejercicio_envios()
}