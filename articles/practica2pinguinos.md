# practica2pinguinos

``` r
library(practica2pinguinos)
```

## Introducción

Bienvenidos a la viñeta del paquete `practica2pinguinos`.  
Aquí mostramos cómo usar los datos incluidos en el paquete
(`pinguinos_demo`)  
y las funciones de conversión y cálculo de IMC.

------------------------------------------------------------------------

## Dataset incluido: `pinguinos_demo`

Este paquete incluye un conjunto de datos pequeño, pensado para
ejemplos.

``` r
pinguinos_demo
#>   especie peso_kg altura_cm
#> 1  Adelie     4.2        38
#> 2  Gentoo     5.1        45
convertir_pulgadas_a_centimetros(10)
#> [1] 25.4

convertir_pulgadas_a_centimetros(15)
#> [1] 38.1
 calcular_indice_masa_corporal(3.5, 0.40)
#> [1] 21.875
```
