#' Calcular el Índice de Masa Corporal (IMC)
#'
#' Calcula el Índice de Masa Corporal (IMC) a partir del peso y la altura.
#' La función verifica que ambos parámetros sean numéricos y mayores que cero.
#'
#' @param peso Peso del individuo en kilogramos (numérico).
#' @param altura Altura del individuo en metros (numérico).
#'
#' @return Un número que representa el IMC calculado como \code{peso / altura^2}.
#'
#' @examples
#' calcular_indice_masa_corporal(70, 1.75)
#' calcular_indice_masa_corporal(3.5, 0.40)
#'
#' @export
calcular_indice_masa_corporal <- function(peso, altura) {
  # Verificar que ambos parámetros sean numéricos
  if (!is.numeric(peso) || !is.numeric(altura)) {
    stop("El peso y la altura deben ser números.")
  }

  # Verificar que los valores no sean negativos o cero
  if (peso <= 0 || altura <= 0) {
    stop("El peso y la altura deben ser mayores a cero.")
  }

  # Calcular el IMC
  imc <- peso / (altura^2)

  return(imc)
}

