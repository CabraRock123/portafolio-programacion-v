
import os
import strconv

fn main() {
    input := os.input('Ingresa tu edad: ')
    edad := strconv.atoi(input) or {
        println('Por favor, ingresa una edad válida.')
        return
    }

    if edad >= 18 {
        println('Ya puedes votar.')
    } else {
        faltan := 18 - edad
        println('Todavía no puedes votar. Te faltan ${faltan} años.')
    }
}
