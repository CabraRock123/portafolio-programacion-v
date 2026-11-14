import os

fn main() {
    println('--- Distancia entre dos autos ---')

    v1 := os.input('Ingresa la velocidad del primer auto (V1 km/h): ').f64()
    v2 := os.input('Ingresa la velocidad del segundo auto (V2 km/h): ').f64()
    horas := os.input('Ingresa el tiempo de viaje (H horas): ').f64()

    distancia1 := v1 * horas
    distancia2 := v2 * horas
    distancia_total := distancia1 + distancia2

    println('\n--- Resultado ---')
    println('Distancia recorrida por el primer auto: ${distancia1} km')
    println('Distancia recorrida por el segundo auto: ${distancia2} km')
    println('Distancia que los separa: ${distancia_total} km')
}
