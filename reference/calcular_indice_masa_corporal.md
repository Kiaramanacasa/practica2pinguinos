# Calculo del indice de masa corporal (IMC)

Esta funcion calcula el IMC a partir del peso (en kilogramos) y la
altura (en metros). Valida que ambos valores sean numericos y mayores
que cero.

## Usage

``` r
calcular_indice_masa_corporal(peso, altura)
```

## Arguments

- peso:

  Peso en kilogramos. Debe ser numerico y mayor que cero.

- altura:

  Altura en metros. Debe ser numerica y mayor que cero.

## Value

Un valor numerico correspondiente al IMC calculado.

## Examples

``` r
calcular_indice_masa_corporal(3.5, 0.40)
#> [1] 21.875
```
