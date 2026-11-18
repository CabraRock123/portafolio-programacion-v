import os

fn main() {
    // 1. Pedir el número al usuario
    x := os.input("Ingresa un número: ").int()

    // 2. Bucle exterior: controla las FILAS (de 1 hasta x)
    for i := 1; i <= x; i++ {
        
        // 3. Bucle interior: controla las COLUMNAS (j llega hasta i)
        for j := 1; j <= i; j++ {
            print(j) //  Imprimimos el valor de j
        }
        
        // 4. Salto de línea al terminar cada fila
        println('')
    }
}