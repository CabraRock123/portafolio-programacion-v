import os

fn main() {
	// Pedimos la calificacion al usuario
	puntos := os.input('Ingresa tu calificacion: ').int()

	// Revisamos la calificacion con match
	match puntos {
		8...10 { println('Muy bien, eres muy listo') } // De 8 a 10
		6...7 { println('Aprobaste Felicidades') } // De 6 a 7
		0...5 { println('Reprobaste, necesitas estudiar mas') } // De 0 a 5
		else { println('Valor fuera de rango') } // Otro valor
	}
}