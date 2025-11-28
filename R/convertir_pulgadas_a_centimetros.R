#' Convertir pulgadas a cent\u00edmetros
#'
#' Convierte un vector de medidas de pulgadas a cent\u00edmetros.
#'
#' @param pulgadas Un vector num\u00e9rico con las medidas en pulgadas.
#' @return Un vector num\u00e9rico con las medidas convertidas a cent\u00edmetros.
#' @export
#'
#' @examples
#' convertir_pulgadas_a_centimetros(c(10, 15, 20))
convertir_pulgadas_a_centimetros <- function(pulgadas) {
  # Programaci\u00f3n Defensiva: Usando cli::cli_abort()
  if (!is.numeric(pulgadas)) {
    cli::cli_abort(
      "{.var pulgadas} debe ser un vector num\u00e9rico."
    )
  }

  # Realizar la conversi\u00f3n
  centimetros <- pulgadas * 2.54

  return(centimetros)
}
