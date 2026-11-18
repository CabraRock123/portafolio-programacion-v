import os

fn main() {
    println('--- Capital y participación de los socios ---')

    primer := os.input('Ingresa el aporte del primer socio (X €): ').f64()

    segundo := (primer * 2.0) - 200.0
    tercero := (primer + segundo) / 2.0

    total := primer + segundo + tercero

    porcentaje_primer := (primer / total) * 100.0
    porcentaje_segundo := (segundo / total) * 100.0
    porcentaje_tercero := (tercero / total) * 100.0

    println('\n--- Resultados ---')
    println('Primer socio aporta: ${primer} €')
    println('Segundo socio aporta: ${segundo} €')
    println('Tercer socio aporta: ${tercero} €')
    println('Capital total invertido: ${total} €')

    println('\n--- Porcentaje de participación ---')
    println('Primer socio: ${porcentaje_primer} %')
    println('Segundo socio: ${porcentaje_segundo} %')
    println('Tercer socio: ${porcentaje_tercero} %')
}
