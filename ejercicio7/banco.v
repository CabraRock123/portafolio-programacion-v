import os

fn main() {
	println('--- Cálculo de préstamo con interés simple ---')

	monto := os.input('Ingresa el monto del préstamo (M €): ').f64()
	tasa := os.input('Ingresa la tasa de interés anual (I %): ').f64()
	anios := os.input('Ingresa el plazo del préstamo (A años): ').f64()

	interes := monto * (tasa / 100.0) * anios
	total := monto + interes
	meses := anios * 12.0
	mensualidad := total / meses

	println('\n--- Resultados ---')
	println('Interés total generado: ${interes} €')
	println('Monto total a pagar: ${total} €')
	println('Mensualidad: ${mensualidad} €')
}
