import os

// Función que contiene el ejercicio de la gasolina.
fn ejercicio_gasolina() {

    // Pedimos los kilómetros recorridos.
    kilometros := os.input('¿Cuántos kilómetros recorriste? ').f64()

    // Pedimos el rendimiento del auto en kilómetros por litro.
    rendimiento := os.input('¿Cuántos kilómetros recorre por litro? ').f64()

    // Pedimos el precio de cada litro de gasolina.
    precio_litro := os.input('¿Cuánto cuesta el litro de gasolina? ').f64()

    // Comprobamos que el rendimiento sea mayor que cero.
    if rendimiento <= 0 {
        println('Error: el rendimiento debe ser mayor que cero.')
        return
    }

    // Calculamos los litros de gasolina consumidos.
    litros_gastados := kilometros / rendimiento

    // Calculamos el costo total del combustible.
    costo_viaje := litros_gastados * precio_litro

    // Mostramos los resultados.
    println('')
    println('=== RESULTADOS DEL VIAJE ===')
    // Mostramos los litros con dos decimales.
println('Litros gastados: ${litros_gastados:.2f}')

// Mostramos el costo con dos decimales.
println('Costo del viaje: $${costo_viaje:.2f}')
}

// Función principal del programa.
fn main() {
    // Ejecutamos el ejercicio de la gasolina.
    ejercicio_gasolina()
}