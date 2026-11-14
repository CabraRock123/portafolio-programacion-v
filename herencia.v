import os 

// Funcion que contiene el ejercicio de la herencia.
fn ejercicio_herencia() {

    //Pedimos la cantidad total de dinero.
    //f64 perimte trabajar con cantidades que tienen decimales.
    monto := os.input('Cual es el monto total de la herenica? ').f64()

    //Calculamos el 50 % para el hermano mayor.
    mayor := monto * 0.50

    //Calculamos el 30% para el hermano segundo.
    segundo := monto * 0.30

    //El hermano menor recibe el dinero que queda.
    menor := monto - mayor - segundo
    
    // Mostramos los resultados.
    println('=== REPARTO DE LA HERENCIA ===')
    println('Hermano mayor: ${mayor}')
    println('Hermano segundo: ${segundo}')
    println('Hermano menor: ${menor}')
}

//Funcion principal del programa.
fn main() {
    //Ejecutamos el ejercicio de la herencia.
    ejercicio_herencia()
}