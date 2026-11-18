import os

fn main() {
    println('--- Cálculo de Precio Final con Descuento e Impuesto ---')

    // 1. Entrada de datos
    p_str := os.input('Ingresa el precio base del producto en € (P): ')
    p := p_str.trim_space().f64()

    d_str := os.input('Ingresa el porcentaje de descuento (D%): ')
    d := d_str.trim_space().f64()

    i_str := os.input('Ingresa el porcentaje de impuesto (I%): ')
    i := i_str.trim_space().f64()

    // 2. Proceso
    monto_descuento := p * (d / 100.0)
    precio_descontado := p - monto_descuento

    monto_impuesto := precio_descontado * (i / 100.0)
    precio_final := precio_descontado + monto_impuesto

    // 3. Salida de resultados
    println('\n--- Desglose de la Compra ---')
    println("Precio base: ${p:.2f} €")
    println("Precio con descuento (${d}%): ${precio_descontado:.2f} €")
    println("Monto total de impuesto (${i}%): ${monto_impuesto:.2f} €")
    println("Precio final a pagar: ${precio_final:.2f} €")
}
