
fn poner(mut figura []rune, mut mapa_colores []int, ancho int, x int, y int, caracter rune, color int) {
    posicion := y * ancho + x
    figura[posicion] = caracter
    mapa_colores[posicion] = color
}

// Dibuja una linea horizontal utilizando un ciclo for.
fn dibujar_horizontal(mut figura []rune, mut mapa_colores []int, ancho int, x_inicio int, x_fin int, y int, caracter rune, color int) {
    for x := x_inicio; x <= x_fin; x++ {
        poner(mut figura, mut mapa_colores, ancho, x, y, caracter, color)
    }
}

// Dibuja una linea vertical utilizando un ciclo for.
fn dibujar_vertical(mut figura []rune, mut mapa_colores []int, ancho int, x int, y_inicio int, y_fin int, caracter rune, color int) {
    for y := y_inicio; y <= y_fin; y++ {
        poner(mut figura, mut mapa_colores, ancho, x, y, caracter, color)
    }
}

// Dibuja un cuadro completo utilizando lineas y esquinas.
fn dibujar_cuadro(mut figura []rune, mut mapa_colores []int, ancho int, x int, y int, ancho_cuadro int, alto_cuadro int, color int) {

    // Parte superior e inferior.
    dibujar_horizontal(mut figura, mut mapa_colores, ancho, x + 1, x + ancho_cuadro - 2, y, `─`, color)
    dibujar_horizontal(mut figura, mut mapa_colores, ancho, x + 1, x + ancho_cuadro - 2, y + alto_cuadro - 1, `─`, color)

    // Lados izquierdo y derecho.
    dibujar_vertical(mut figura, mut mapa_colores, ancho, x, y + 1, y + alto_cuadro - 2, `│`, color)
    dibujar_vertical(mut figura, mut mapa_colores, ancho, x + ancho_cuadro - 1, y + 1, y + alto_cuadro - 2, `│`, color)

    // Esquinas.
    poner(mut figura, mut mapa_colores, ancho, x, y, `┌`, color)
    poner(mut figura, mut mapa_colores, ancho, x + ancho_cuadro - 1, y, `┐`, color)
    poner(mut figura, mut mapa_colores, ancho, x, y + alto_cuadro - 1, `└`, color)
    poner(mut figura, mut mapa_colores, ancho, x + ancho_cuadro - 1, y + alto_cuadro - 1, `┘`, color)
}

fn main() {

    // Dimensiones de nuestra figura.
    ancho := 68
    alto := 50

    // Creamos el arreglo de runas para dibujar.
    mut figura := []rune{len: ancho * alto, init: ` `}

    // Creamos otro arreglo para identificar los colores.
    mut mapa_colores := []int{len: ancho * alto, init: 0}

    // COLORES: todos son diferentes
    colores := [
        '',
        '\x1b[38;2;255;80;80m',    // 1. Rojo
        '\x1b[38;2;80;220;120m',   // 2. Verde
        '\x1b[38;2;80;160;255m',   // 3. Azul
        '\x1b[38;2;255;210;60m',   // 4. Amarillo
        '\x1b[38;2;240;240;240m',  // 5. Blanco
        '\x1b[38;2;190;100;255m',  // 6. Morado
        '\x1b[38;2;255;145;40m'    // 7. Naranja
    ]

    // COLOCAMOS EL MARCO EXTERIOR.
    dibujar_horizontal(mut figura, mut mapa_colores, ancho, 1, ancho - 2, 0, `═`, 5)
    dibujar_horizontal(mut figura, mut mapa_colores, ancho, 1, ancho - 2, alto - 1, `═`, 5)

    dibujar_vertical(mut figura, mut mapa_colores, ancho, 0, 1, alto - 2, `║`, 5)
    dibujar_vertical(mut figura, mut mapa_colores, ancho, ancho - 1, 1, alto - 2, `║`, 5)

    // Esquinas del marco exterior.
    poner(mut figura, mut mapa_colores, ancho, 0, 0, `╔`, 5)
    poner(mut figura, mut mapa_colores, ancho, ancho - 1, 0, `╗`, 5)
    poner(mut figura, mut mapa_colores, ancho, 0, alto - 1, `╚`, 5)
    poner(mut figura, mut mapa_colores, ancho, ancho - 1, alto - 1, `╝`, 5)

    // LINEA VERTICAL QUE DIVIDE LA PARTE SUPERIOR.
    x_medio := ancho / 2 - 1
    y_medio := alto / 2 - 1

    dibujar_vertical(mut figura, mut mapa_colores, ancho, x_medio, 1, y_medio - 1, `║`, 6)
    poner(mut figura, mut mapa_colores, ancho, x_medio, 0, `╦`, 6)

    // LINEA HORIZONTAL QUE DIVIDE LA FIGURA.
    dibujar_horizontal(mut figura, mut mapa_colores, ancho, 1, ancho - 2, y_medio, `═`, 7)

    poner(mut figura, mut mapa_colores, ancho, 0, y_medio, `╠`, 7)
    poner(mut figura, mut mapa_colores, ancho, ancho - 1, y_medio, `╣`, 7)
    poner(mut figura, mut mapa_colores, ancho, x_medio, y_medio, `╩`, 7)

    // CUADRO 1: SUPERIOR IZQUIERDO - ROJO.
    dibujar_cuadro(mut figura, mut mapa_colores, ancho, 7, 3, 18, 9, 1)

    // CUADRO 2: SUPERIOR DERECHO - VERDE.
    dibujar_cuadro(mut figura, mut mapa_colores, ancho, 42, 13, 18, 9, 2)

    // CUADRO 3: INFERIOR DERECHO - AZUL.
    dibujar_cuadro(mut figura, mut mapa_colores, ancho, 42, 27, 18, 9, 3)

    // CUADRO 4: INFERIOR IZQUIERDO - AMARILLO.
    dibujar_cuadro(mut figura, mut mapa_colores, ancho, 7, 38, 18, 9, 4)

    // IMPRIMIMOS TODA LA FIGURA.
    for y := 0; y < alto; y++ {
        for x := 0; x < ancho; x++ {

            posicion := y * ancho + x
            color_actual := mapa_colores[posicion]

            if color_actual == 0 {
                print(figura[posicion].str())
            } else {
                print('${colores[color_actual]}${figura[posicion].str()}\x1b[0m')
            }
        }

        println('')
    }
}
