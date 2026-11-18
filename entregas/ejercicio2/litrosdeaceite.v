import os

fn main() {
    println('--- Cálculo de Ganancias por Venta de Aceite ---')

    // 1. Entradas del usuario
    entrada_n := os.input('Ingresa la cantidad de litros comprados (N): ')
    litros := entrada_n.trim_space().f64()

    entrada_m := os.input('Ingresa el costo total de la compra en € (M): ')
    costo_total := entrada_m.trim_space().f64()

    entrada_k := os.input('Ingresa el precio de venta por litro en € (K): ')
    precio_venta_litro := entrada_k.trim_space().f64()

    // 2. Cálculos
    ingreso_total := litros * precio_venta_litro
    ganancia := ingreso_total - costo_total

    // 3. Salida de resultados
    println('\n--- Resumen de la Operación ---')
    println("Litros comprados: ${litros} L")
    println("Costo de compra: ${costo_total} €")
    println("Ingreso total generado: ${ingreso_total} €")
    println("Ganancia neta: ${ganancia} €")
}
