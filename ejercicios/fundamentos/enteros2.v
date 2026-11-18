import os
import time // 1. Importamos el módulo de tiempo

fn main() {
    x := os.input("Ingresa un número: ").int()

    for i := 1; i <= x; i++ {
        for j := 1; j <= i; j++ {
            print('*')
            
            // 2. Aquí está la magia: pausamos 50 milisegundos (0.05 segundos)
            time.sleep(1 * time.millisecond) 
        }
        println('')
    }
}