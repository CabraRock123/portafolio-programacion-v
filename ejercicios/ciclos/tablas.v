import os

fn main() {
    // El menú se repite hasta que el usuario decida salir
    for {
        println('\n=== TABLAS DE MULTIPLICAR ===')
        println('1. Tabla del 6')
        println('2. Tabla del 7')
        println('3. Tabla del 8')
        println('4. Tabla del 9')
        println('0. Salir')

        // Pedimos la tabla que quiere el usuario
        opcion := os.input('¿Qué tabla quieres imprimir? ').int()

        // Si escribe cero, termina el programa
        if opcion == 0 {
            println('¡Adiós!')
            break
        }

        // Comprobamos que la opción sea válida
        if opcion < 6 || opcion > 9 {
            println('\nERROR: Opción inválida.')
            println('Debes elegir 6, 7, 8 o 9.')

            // Esperamos antes de regresar al menú
            os.input('Presiona Enter para continuar...')
            continue
        }

        // Preguntamos hasta qué número imprimir la tabla
        limite := os.input('¿Hasta qué número quieres la tabla? ').int()

        // Comprobamos que el límite sea válido
        if limite < 1 {
            println('\nERROR: Escribe un número mayor que cero valido, no se aceptan caracteres.')
            os.input('Presiona Enter para continuar...')
            continue
        }

        // Mostramos la tabla seleccionada
        println('\n=== TABLA DEL ${opcion} ===')

        // Repetimos las multiplicaciones hasta el límite
        for i := 1; i <= limite; i++ {
            resultado := opcion * i
            println('${opcion} x ${i} = ${resultado}')
        }

        // Esperamos antes de mostrar nuevamente el menú
        os.input('\nPresiona Enter para volver al menú...')
    }
}