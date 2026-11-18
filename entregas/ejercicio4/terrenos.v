import os

fn main() {
	println('--- Cálculo del costo del proyecto ---')

	largo := os.input('Ingresa el largo del terreno (L): ').f64()
	ancho := os.input('Ingresa el ancho del terreno (A): ').f64()
	costo_alambre := os.input('Ingresa el costo del alambre por metro (C €): ').f64()
	costo_pasto := os.input('Ingresa el costo del pasto por metro cuadrado (G €): ').f64()

	perimetro := 2.0 * (largo + ancho)
	area := largo * ancho

	costo_cercado := perimetro * costo_alambre
	costo_total_pasto := area * costo_pasto
	costo_total_proyecto := costo_cercado + costo_total_pasto

	println('\n--- Resultados ---')
	println('Costo total del cercado: ${costo_cercado} €')
	println('Costo total del pasto: ${costo_total_pasto} €')
	println('Costo total del proyecto: ${costo_total_proyecto} €')
}
