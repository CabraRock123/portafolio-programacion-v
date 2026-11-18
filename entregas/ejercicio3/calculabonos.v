import os

fn main() {
    println('--- Cálculo de Bono para Empleados ---')

    bono := os.input('Ingresa el monto total del bono (P €): ').f64()

    primer := bono * 0.50
    segundo := bono * 0.30
    tercero := bono - primer - segundo

    suma := primer + segundo + tercero

    println('\n--- Reparto del Bono ---')
    println('Primer empleado: ${primer} €')
    println('Segundo empleado: ${segundo} €')
    println('Tercer empleado: ${tercero} €')
    println('Suma de los tres pagos: ${suma} €')

    if suma == bono {
        println('La suma coincide con el bono total.')
    } else {
        println('La suma no coincide con el bono total.')
    }
}
