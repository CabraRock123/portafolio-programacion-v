
import os

fn main() {
    mut size := 0

    // Mostramos el mensaje inicial
    println('Dibuja un cuadro de asteriscos N x N')

    // Pedimos el tamaño del cuadro
    size = os.input('numero de asteriscos: ').int()

    // Este for controla los renglones
    for i := 1; i <= size; i++ {

        // Este for controla las columnas
        for j := 1; j <= size; j++ {

            // Si el renglon es par, imprime un asterisco
            if i % 2 == 0 {
                print('*')
            } else {
                // Si el renglon es impar, imprime un signo de mas
                print('+')
            }
        }

        // Al terminar las columnas, pasamos al siguiente renglon
        println('')
    }
}
