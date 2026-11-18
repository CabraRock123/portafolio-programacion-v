# Portafolio de programación en V

Ejercicios de consola que desarrollé durante mi primer semestre de Ingeniería en Computación. Aquí practico cómo leer y validar datos, organizar programas con funciones y trabajar con ciclos, arreglos y matrices.

## Cómo ejecutar los ejercicios

Necesitas tener V instalado y disponible en la terminal. Desde la raíz del repositorio, usa `v run` seguido de la ruta del archivo que quieres ejecutar.

```sh
v version
v run menu_ejercicios/menu.v
```

Cada ejercicio se ejecuta indicando su archivo `.v`. Los diagramas `.fprg` se abren en Flowgorithm.

## Ejercicios destacados

### Menú de ocho ejercicios

[Ver el código](menu_ejercicios/menu.v)

Agrupa ocho problemas en funciones y usa `match` para llamar a la función que corresponde a cada opción. El menú se repite hasta elegir `0`.

Para probarlo, ejecuta `v run menu_ejercicios/menu.v` y elige la opción `3`. Si ingresas `120` km, `12` km/L y `24` pesos por litro, el resultado esperado es **10 litros y 240 pesos**. Con un rendimiento de `0`, el programa muestra un error.

### Suma de matrices de N filas por M columnas

[Ver el código](ejercicios/matrices/suma_matrices.v)

Captura dos matrices de las mismas dimensiones y usa ciclos anidados para sumar los elementos que ocupan la misma posición.

Ejecuta `v run ejercicios/matrices/suma_matrices.v` e indica `2` filas y `3` columnas. Captura `1, 2, 3, 4, 5, 6` para la primera matriz y `6, 5, 4, 3, 2, 1` para la segunda, en orden por filas. La matriz resultante tiene dos filas de `7 7 7`.

### Ordenamiento burbuja

[Ver el código](ejercicios/arreglos/ordenamiento_burbuja.v)

Guarda los números en un arreglo dinámico. Con dos ciclos, compara elementos vecinos y los intercambia cuando están fuera de orden.

Ejecuta `v run ejercicios/arreglos/ordenamiento_burbuja.v`, indica que vas a ingresar `4` números y captura `5, -2, 5, 0` uno por uno. El orden esperado es `-2 0 5 5`.

## Índice por tema

| Tema | Ejercicios |
| --- | --- |
| Condicionales y validación | [Calculadora entera](ejercicios/fundamentos/calculadora_entera.v), [multa por velocidad](ejercicios/fundamentos/multa_por_velocidad.v) |
| Ciclos | [Factorial](ejercicios/ciclos/numfactorial.v), [tabla de multiplicar](ejercicios/ciclos/tablamultiplicar.v) |
| Arreglos | [Ordenamiento burbuja](ejercicios/arreglos/ordenamiento_burbuja.v), [menor](ejercicios/arreglos/menor.v), [moda](ejercicios/arreglos/moda.v) |
| Matrices | [Suma de matrices](ejercicios/matrices/suma_matrices.v) |
| Cadenas | [Palíndromo](ejercicios/cadenas/palindromo.v), [vocales](ejercicios/cadenas/vocales.v) |
| Funciones y selección con `match` | [Menú de ocho ejercicios](menu_ejercicios/menu.v) |

## Diagramas de flujo

El [diagrama de gasolina](diagramas/Diagrama%20de%20Gasolina.fprg) muestra cómo se validan los datos y se calcula el costo del viaje. Puedes seguir esa misma lógica en el [ejercicio en V](ejercicios/aplicaciones/gasolina.v). También incluí diagramas para [pizzas](diagramas/Diagrama%20de%20flujo%20Pizzas.fprg), [herencia](diagramas/Diagrama%20de%20Herencia.fprg) y [préstamo bancario](diagramas/Diagrama%20de%20Prestamo%20Bancario.fprg).

Las [entregas de clase](entregas/) reúnen los ejercicios numerados y sus documentos. En [referencias](referencias/) guardo material de clase.
