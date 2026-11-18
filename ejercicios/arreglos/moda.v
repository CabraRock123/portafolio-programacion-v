fn main() {
    // Colores RGB
    azul := "\033[38;2;40;190;255m"
    morado := "\033[38;2;190;110;255m"
    dorado := "\033[38;2;255;190;70m"
    reset := "\033[0m"

    // Letras de RODRIGO
    nombre := [
        '+++ +++ ++  +++ +++ +++ +++',
        '+ + + + + + + +  +  +   + +',
        '+++ + + + + +++  +  + + + +',
        '+ + + + + + + +  +  + + + +',
        '+ + +++ ++  + + +++ +++ +++'
    ]

    // Letras de VELAZQUEZ
    apellido := [
        '+ + +++ +    +  +++ +++ + + +++ +++',
        '+ + +   +   + +   + + + + + +     +',
        '+ + +++ +   +++  +  + + + + +++  + ',
        '+ + +   +   + + +    ++ + + +   +  ',
        ' +  +++ +++ + + +++   + +++ +++ +++'
    ]

    // Imprimir el nombre completo
    for i := 0; i < nombre.len; i++ {
        println("${azul}${nombre[i]}${reset}   ${morado}+++${reset}   ${dorado}${apellido[i]}${reset}")
    }

    println('')
}