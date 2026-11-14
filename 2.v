module main

import os

fn main() {
    velocidad := os.input("Velocidad del vehículo (km/h): ").int()
    limite := os.input("Límite permitido (km/h): ").int()

    exceso := velocidad - limite

    if exceso <= 0 {
        println("Sin multa")
    } else if exceso <= 20 {
        println("Multa leve: $800")
    } else if exceso <= 40 {
        println("Multa grave: $2000")
    } else {
        println("Multa muy grave: $5000")
    }
}