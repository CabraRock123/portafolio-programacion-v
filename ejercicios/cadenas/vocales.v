
import os

fn main() {
    // Pedimos un texto al usuario.
    texto := os.input('Ingresa un texto: ')

    // Convertimos el texto a minusculas y obtenemos sus caracteres.
    caracteres := texto.to_lower().runes()

    // Variable donde guardaremos las vocales.
    mut resultado := ''

    // Recorremos todos los caracteres.
    for letra in caracteres {
        if letra == `a` || letra == `e` || letra == `i` || letra == `o` || letra == `u`
            || letra == `á` || letra == `é` || letra == `í` || letra == `ó` || letra == `ú`
            || letra == `ü` {
            resultado += letra.str()
        } else if letra == ` ` {
            resultado += ' '
        }
    }

    // Mostramos las vocales encontradas.
    println('Vocales encontradas: ${resultado}')
}
