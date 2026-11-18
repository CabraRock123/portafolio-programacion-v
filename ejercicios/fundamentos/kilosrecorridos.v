import os

fn main() {
    println('15Calculadora de Viaje')
    
    // Leer entradas del usuario
    km_str := os.input('Ingresa los kilómetros recorridos: ')
    liters_str := os.input('Ingresa los litros consumidos: ')
    price_str := os.input('Ingresa el precio por litro ($): ')
    
    // Convertir a tipo f64 (flotante de 64 bits)
    km := km_str.f64()
    liters := liters_str.f64()
    price_per_liter := price_str.f64()
    
    // Validación básica para evitar división por cero
    if liters <= 0 || km <= 0 {
        println('Error: Los kilómetros y los litros deben ser mayores a 0.')
        return
    }
    
    // Cálculos
    rendimiento := km / liters
    costo_total := liters * price_per_liter
    costo_por_km := costo_total / km
    
    // Mostrar resultados formateados a 2 decimales
    println('\n Resultados:')
    println('Rendimiento: ${rendimiento:.2f} km/L')
    println('Costo total: $${costo_total:.2f}')
    println('Costo por kilómetro: $${costo_por_km:.2f}/km')
}