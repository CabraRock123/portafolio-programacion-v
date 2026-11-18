import os // Perimite utilizar herramientas como os.input() para pedir datos.

// main es la funcion donde comienza a ejecutarse el programa.
fn main() {

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
