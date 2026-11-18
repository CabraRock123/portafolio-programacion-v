import os

fn main() {
    x := os.input('ingrese un numero: ').int()

    for i := 1; i <= x; i++ {
        println('${i} que hay de nuevo')
    }
}
