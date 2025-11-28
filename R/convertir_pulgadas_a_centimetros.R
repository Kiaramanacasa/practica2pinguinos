#' Convertir pulgadas a centímetros
#'
#' Convierte un vector de medidas de pulgadas a centímetros.
#'
#' @param pulgadas Un vector numérico con las medidas en pulgadas.
#' @return Un vector numérico con las medidas convertidas a centímetros.
#' @export
#'
#' @examples
#' convertir_pulgadas_a_centimetros(c(10, 15, 20))
convertir_pulgadas_a_centimetros <- function(pulgadas) {
  # Programación Defensiva: Usando cli::cli_abort()
  if (!is.numeric(pulgadas)) {
    cli::cli_abort(
      "{.var pulgadas} debe ser un vector numérico."
    )
  }

  # Realizar la conversión
  centimetros <- pulgadas * 2.54

  return(centimetros)
}
