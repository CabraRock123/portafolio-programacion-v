import os

fn main() {
    invitados := os.input('Número de invitados: ').int()
    rebanadas_invitado := os.input('Rebanadas por invitado: ').int()
    rebanadas_pizza := os.input('Rebanadas por pizza: ').int()

    total_rebanadas := invitados * rebanadas_invitado

    // Calcular pizzas necesarias
    mut pizzas := total_rebanadas / rebanadas_pizza

    // Si no alcanza exactamente, necesitamos otra pizza
    if total_rebanadas % rebanadas_pizza != 0 {
        pizzas++
    }

    // Calcular rebanadas sobrantes
    rebanadas_sobrantes := pizzas * rebanadas_pizza - total_rebanadas

    println('Pizzas a comprar: ${pizzas}')
    println('Rebanadas sobrantes: ${rebanadas_sobrantes}')
}