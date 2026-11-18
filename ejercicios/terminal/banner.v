
fn main() {
    // Definimos los tres colores personalizados.
    azul := "\033[38;2;40;190;255m"
    morado := "\033[38;2;190;110;255m"
    dorado := "\033[38;2;255;190;70m"
    reset := "\033[0m"

    // Iniciamos el banner.
    println("")

    // RODRIGO en azul, VELÁ en morado y ZQUEZ en dorado.
    println("${azul}+++  ++++ +++  +++  ++++ ++++ ++++${reset}   ${morado}+  + ++++ +      +  ${reset}${dorado}++++ ++++ +  + ++++ ++++${reset}")

    println("${azul}+  + +  + +  + +  +  +   +    +  +${reset}   ${morado}+  + +    +     ++  ${reset}${dorado}   + +  + +  + +       +${reset}")

    println("${azul}+++  +  + +  + +++   +   + ++ +  +${reset}   ${morado}+  + +++  +    +  + ${reset}${dorado}  ++ +  + +  + +++    ++${reset}")

    println("${azul}++   +  + +  + ++    +   +  + +  +${reset}   ${morado}+  + +    +    ++++ ${reset}${dorado} ++  +  + +  + +     ++ ${reset}")

    println("${azul}+ +  +  + +  + + +   +   +  + +  +${reset}   ${morado} ++  +    +    +  + ${reset}${dorado}+    ++++ +  + +    +   ${reset}")

    println("${azul}+  + ++++ +++  +  + ++++ ++++ ++++${reset}   ${morado} ++  ++++ ++++ +  + ${reset}${dorado}++++    + ++++ ++++ ++++${reset}")

    // Finalizamos el banner.
    println("")
}
