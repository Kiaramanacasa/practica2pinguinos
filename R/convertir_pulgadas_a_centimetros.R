#' Convertir pulgadas a centimetros
#'
#' Esta funcion convierte un valor numerico en pulgadas a centimetros.
#'
#' @param pulgadas Valor numerico en pulgadas.
#'
#' @return Valor numerico convertido a centimetros.
#'
#' @examples
#' convertir_pulgadas_a_centimetros(10)
#'
#' @export
convertir_pulgadas_a_centimetros <- function(pulgadas) {

  if (!is.numeric(pulgadas)) {
    stop("El valor ingresado no es un numero.")
  }

  pulgadas * 2.54
}

