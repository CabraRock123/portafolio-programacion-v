import os

fn main() {
    println('--- Cálculo de Sueldos de Obreros ---')

    entrada := os.input('Ingresa lo que gana el primer obrero (N €): ')
    primer := entrada.trim_space().f64()

    segundo := primer + 70.0
    tercero := (primer + segundo) / 2.0
    total := primer + segundo + tercero

    println('\n--- Desglose de Pagos ---')
    println("El primer obrero gana: ${primer} €")
    println("El segundo obrero gana: ${segundo} €")
    println("El tercero gana: ${tercero} €")
    println("Total a pagar entre los tres: ${total} €")
}
