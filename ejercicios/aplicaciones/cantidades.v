import os

// Función que muestra equivalencias de dólares a pesos.
fn ejercicio_conversion() {

    // Pedimos cuántos pesos vale un dólar.
    tipo_cambio := os.input('¿Cuántos pesos vale un dólar? ').f64()

    // Pedimos la cantidad inicial de dólares.
    cantidad_inicial := os.input('¿Con cuántos dólares comenzamos? ').int()

    // Pedimos cuánto aumentará la cantidad en cada paso.
    incremento := os.input('¿De cuántos dólares será el incremento? ').int()

    // Pedimos la cantidad máxima de dólares.
    tope := os.input('¿Hasta cuántos dólares llegaremos? ').int()

    // Comprobamos que los datos sean válidos.
    if tipo_cambio <= 0 || cantidad_inicial <= 0
        || incremento <= 0 || tope < cantidad_inicial {
        println('Error: verifica las cantidades ingresadas.')
        return
    }

    // Mostramos el título de los resultados.
    println('')
    println('=== CONVERSIÓN DE DÓLARES A PESOS ===')

    // Repetimos desde la cantidad inicial hasta alcanzar el tope.
    for dolares := cantidad_inicial; dolares <= tope; dolares += incremento {

        // Convertimos la cantidad actual de dólares a pesos.
        pesos := f64(dolares) * tipo_cambio

        // Mostramos ambas cantidades con dos decimales.
        println('${dolares} dólares = $${pesos:.2f} pesos')
    }
}

// Función principal del programa.
fn main() {
    ejercicio_conversion()
}