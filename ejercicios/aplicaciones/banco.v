import os

// Función que evalúa si se aprueba el préstamo.
fn ejercicio_prestamo() {

    // Pedimos el sueldo mensual.
    sueldo := os.input('¿Cuál es tu sueldo mensual? ').f64()

    // Pedimos cuánto pagaría mensualmente por el préstamo.
    mensualidad := os.input('¿Cuánto pagarías al mes? ').f64()

    // Pedimos los años de antigüedad laboral.
    antiguedad := os.input('¿Cuántos años de antigüedad tienes? ').int()

    // Preguntamos si tiene deudas vencidas.
    deudas := os.input('¿Tienes deudas vencidas? (s/n): ')

    // Comprobamos que los datos sean válidos.
    if sueldo <= 0 || mensualidad <= 0 || antiguedad < 0 {
        println('Error: ingresa cantidades válidas.')
        return
    }

    // Comprobamos que la respuesta sobre las deudas sea válida.
    if deudas != 's' && deudas != 'S' && deudas != 'n' && deudas != 'N' {
        println('Error: responde s para sí o n para no.')
        return
    }

    // Verificamos si el sueldo supera tres veces la mensualidad.
    sueldo_suficiente := sueldo > mensualidad * 3

    // Verificamos si tiene más de dos años de antigüedad.
    antiguedad_suficiente := antiguedad > 2

    // Verificamos que no tenga deudas vencidas.
    sin_deudas := deudas == 'n' || deudas == 'N'

    // Aprobamos solamente si cumple las tres condiciones.
    if sueldo_suficiente && antiguedad_suficiente && sin_deudas {
        println('Préstamo aprobado.')
    } else {
        // Si no cumple alguna condición, mostramos los motivos.
        println('Préstamo rechazado por:')

        if !sueldo_suficiente {
            println('- El sueldo no supera tres veces la mensualidad.')
        }

        if !antiguedad_suficiente {
            println('- La antigüedad laboral debe ser mayor de 2 años.')
        }

        if !sin_deudas {
            println('- La persona tiene deudas vencidas.')
        }
    }
}

// Función principal del programa.
fn main() {
    ejercicio_prestamo()
}