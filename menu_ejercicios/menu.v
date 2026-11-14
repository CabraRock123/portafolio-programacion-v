module main

import os




// main es la funcion donde comienza a ejecutarse el programa.
fn ejercicio_pizzas() {

    //Pedimos la cantidad de invitados y convertimos la respuesta a entero.
    invitados := os.input('Cuantos invitados hay? ').int()

    //Pedimos cuantas pizzas se compraron.
    pizzas := os.input('Cuantas pizzas compraron? ').int()

    //Pedimos cuantas rebanadas tiene cada pizza.
    rebanadas_por_pizza := os.input('Cuantas rebanadas tiene cada pizza? ').int()

    //Comprobamos que haya al menos un invitado.
    //No podemos dividir entre cero ni entre un numero negativo.

    if invitados <= 0 {
        println('Error: debe haber al menos un invitado.')
        return

    }
   
    //Multiplicamos las pizzas por las rebanadas que tiene cada una.
    total_rebanadas := pizzas * rebanadas_por_pizza

    // Comprobamos si alcanza para darle una rebanada a cada invitado.
     if total_rebanadas < invitados {
      println('¡No hay suficiente pizza para los invitados!')
}

    //Dividimos el total entre los invitados.
    //La division entera nos da las rebanadas completas por persona.
    rebanadas_por_invitado := total_rebanadas / invitados

    //Calculamos cuantas rebanadas quedan sin repartir.
    sobrantes := total_rebanadas % invitados

    // Dejamos una línea en blanco para separar los resultados.
println('')

// Mostramos un título para identificar los resultados.
println('=== RESULTADOS ===')

// Mostramos la cantidad total de rebanadas.
println('Total de rebanadas: ${total_rebanadas}')

// Mostramos cuántas rebanadas completas recibe cada invitado.
println('Rebanadas por invitado: ${rebanadas_por_invitado}')

// Mostramos cuántas rebanadas quedan sobrando.
println('Rebanadas sobrantes: ${sobrantes}')
}


// Funcion que contiene el ejercicio de la herencia.
fn ejercicio_herencia() {

    //Pedimos la cantidad total de dinero.
    //f64 perimte trabajar con cantidades que tienen decimales.
    monto := os.input('Cual es el monto total de la herenica? ').f64()

    //Calculamos el 50 % para el hermano mayor.
    mayor := monto * 0.50

    //Calculamos el 30% para el hermano segundo.
    segundo := monto * 0.30

    //El hermano menor recibe el dinero que queda.
    menor := monto - mayor - segundo
    
    // Mostramos los resultados.
    println('=== REPARTO DE LA HERENCIA ===')
    println('Hermano mayor: ${mayor}')
    println('Hermano segundo: ${segundo}')
    println('Hermano menor: ${menor}')
}

//Funcion principal del programa.


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


// Función que calcula los ahorros semanales.
fn ejercicio_ahorros() {

    // Pedimos cuánto ahorra la persona la primera semana.
    ahorro_inicial := os.input('¿Cuánto ahorrarás la primera semana? $ ').f64()

    // Pedimos cuánto aumentará el ahorro cada semana.
    incremento := os.input('¿Cuánto aumentarás tu ahorro cada semana? $ ').f64()

    // Pedimos la meta de ahorro que se quiere alcanzar.
    meta := os.input('¿Cuál es tu meta de ahorro? $ ').f64()

    // Comprobamos que los datos sean positivos.
    if ahorro_inicial <= 0 || incremento <= 0 || meta <= 0 {
        println('Error: las cantidades deben ser mayores que cero.')
        return
    }

    // Iniciamos el acumulado en cero.
    mut acumulado := 0.0

    // Guardaremos la semana en la que se alcanza la meta.
    mut semana_meta := 0

    // Repetimos mientras el acumulado sea menor que la meta.
    for semana := 1; acumulado < meta; semana++ {

        // Calculamos cuánto ahorrará durante esta semana.
        ahorro_semana := ahorro_inicial + f64(semana - 1) * incremento

        // Sumamos el ahorro semanal al acumulado.
        acumulado += ahorro_semana

        // Mostramos el ahorro y el acumulado de esta semana.
        println('Semana ${semana}: ahorro $${ahorro_semana:.2f}, acumulado $${acumulado:.2f} ')

        // Comprobamos si ya alcanzó la meta.
        if acumulado >= meta {
            semana_meta = semana
        }
    }

    // Mostramos en qué semana se alcanzó la meta.
    println('')
    println('¡Meta alcanzada!')
    println('Semana en que se alcanzó: ${semana_meta}')
    println('Ahorro acumulado: $${acumulado:.2f}')
}

// Función principal del programa.


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
    for {
        println('\n===== MENU DE EJERCICIOS =====')
        println('1. Pizzas para la fiesta')
        println('2. Reparto de herencia')
        println('3. Consumo de gasolina')
        println('4. Tipo de envio')
        println('5. Prestamo bancario')
        println('6. Descuento en tienda')
        println('7. Meta de ahorro')
        println('8. Conversion de divisas')
        println('0. Salir')

        opcion := os.input('Selecciona una opcion: ').int()

        match opcion {
            1 { ejercicio_pizzas() }
            2 { ejercicio_herencia() }
            3 { ejercicio_gasolina() }
            4 { ejercicio_envios() }
            5 { ejercicio_prestamo() }
            6 { ejercicio_descuentos() }
            7 { ejercicio_ahorros() }
            8 { ejercicio_conversion() }
            0 {
                println('Hasta luego.')
                break
            }
            else {
                println('Opcion invalida.')
            }
        }

        if opcion != 0 {
            os.input('\nPresiona Enter para regresar al menu...')
        }
    }
}
