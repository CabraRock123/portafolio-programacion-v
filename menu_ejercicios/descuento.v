import os

// Función que calcula el descuento de la compra.
fn ejercicio_descuentos() {

    // Pedimos el monto total de la compra.
    monto := os.input('¿Cuál es el monto de la compra? $').f64()

    // Preguntamos si el cliente tiene tarjeta de lealtad.
    tarjeta := os.input('¿Tiene tarjeta de lealtad? (s/n): ')

    // Preguntamos si es temporada de rebajas.
    rebajas := os.input('¿Es temporada de rebajas? (s/n): ')

    // Comprobamos que el monto sea válido.
    if monto <= 0 {
        println('Error: el monto debe ser mayor que cero.')
        return
    }

    // Validamos la respuesta sobre la tarjeta.
    if tarjeta != 's' && tarjeta != 'S' && tarjeta != 'n' && tarjeta != 'N' {
        println('Error: responde s o n.')
        return
    }

    // Validamos la respuesta sobre las rebajas.
    if rebajas != 's' && rebajas != 'S' && rebajas != 'n' && rebajas != 'N' {
        println('Error: responde s o n.')
        return
    }

    // Inicializamos el descuento en cero.
    mut descuento := 0

    // Si compra $1,000 o más, suma 10 %.
    if monto >= 1000 {
        descuento += 10
    }

    // Si tiene tarjeta, suma 10 %.
    if tarjeta == 's' || tarjeta == 'S' {
        descuento += 10
    }

    // Si es temporada de rebajas, suma 10 %.
    if rebajas == 's' || rebajas == 'S' {
        descuento += 10
    }

    // Calculamos cuánto dinero se descuenta.
    cantidad_descuento := monto * f64(descuento) / 100.0

    // Restamos el descuento para obtener el total a pagar.
    total_pagar := monto - cantidad_descuento

    // Mostramos los resultados.
    println('')
    println('=== RESULTADOS DE LA COMPRA ===')
    println('Descuento aplicado: ${descuento}%')
    println('Dinero descontado: $${cantidad_descuento:.2f}')
    println('Total a pagar: $${total_pagar:.2f}')
}

// Función principal del programa.
fn main() {
    ejercicio_descuentos()
}