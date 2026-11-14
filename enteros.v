import os

fn main () {
    //1. Pedir el numero al usuario
    x := os.input("Ingesa un numero: ").int()

    //2.Bucle exterior: controla las FILAS (de 1 hasta x)

       for i := 1; i <= x; i++ {

           //3. Bucle interior: controla las COLUMNAS
           //Cambio clave ahora j llega hasta i no hasta x

             for j := 1; j<= i; j++ {
                   print('*')
             }
           //4. Salto de linea al terminar cada fila
              

              
                println('')

                
       }


}