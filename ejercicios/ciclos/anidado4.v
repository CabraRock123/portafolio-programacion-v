import os

fn main() {
    x := os.input("Ingresa un número: ").int()

    // Bucle exterior: va desde x hasta 1 (restando)
    for i := x; i >= 1; i-- {
        
        // Bucle interior: imprime asteriscos hasta i
        for j := 1; j <= i; j++ {
            print('*')
        }
        
        // Salto de línea
        println('')
    }
}