
import os

fn main() {
    // Pedimos el texto al usuario.
    texto := os.input('Ingresa un texto: ')

    // Convertimos el texto a mayúsculas y quitamos los espacios.
    texto_limpio := texto.to_upper().replace(' ', '')

    // Convertimos el texto en un arreglo de caracteres.
    caracteres := texto_limpio.runes()

    // Validamos que el usuario haya escrito algo.
    if caracteres.len == 0 {
        println('No ingresaste ningún texto.')
        return
    }

    // Suponemos que el texto es un palíndromo.
    mut es_palindromo := true

    // Comparamos los caracteres desde ambos extremos.
    for i in 0 .. caracteres.len / 2 {
        if caracteres[i] != caracteres[caracteres.len - 1 - i] {
            es_palindromo = false
            break
        }
    }

    // Mostramos el resultado.
    if es_palindromo {
        println('El texto SI es un palíndromo.')
    } else {
        println('El texto NO es un palíndromo.')
    }
}
