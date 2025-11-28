#' Convertir pulgadas a centímetros
#'
#' Convierte una medida expresada en pulgadas a su equivalente en centímetros.
#' La función valida que el argumento de entrada sea numérico.
#'
#' @param pulgadas Valor numérico que representa la longitud en pulgadas.
#'
#' @return Un número que indica la longitud convertida a centímetros.
#'
#' @examples
#' convertir_pulgadas_a_centimetros(10)
#' convertir_pulgadas_a_centimetros(2.5)
#'
#' @export
convertir_pulgadas_a_centimetros <- function(pulgadas) {
  # Verificar que el argumento sea numérico
  if (!is.numeric(pulgadas)) {
    stop("El valor ingresado no es un número.")
  }

  # Realizar la conversión
  centimetros <- pulgadas * 2.54

  return(centimetros)
}
