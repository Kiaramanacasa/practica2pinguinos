#' Calculo del indice de masa corporal (IMC)
#'
#' Esta funcion calcula el IMC a partir del peso (en kilogramos)
#' y la altura (en metros). Valida que ambos valores sean numericos
#' y mayores que cero.
#'
#' @param peso Peso en kilogramos. Debe ser numerico y mayor que cero.
#' @param altura Altura en metros. Debe ser numerica y mayor que cero.
#'
#' @return Un valor numerico correspondiente al IMC calculado.
#'
#' @examples
#' calcular_indice_masa_corporal(3.5, 0.40)
#'
#' @export
calcular_indice_masa_corporal <- function(peso, altura) {

  if (!is.numeric(peso) || !is.numeric(altura)) {
    stop("El peso y la altura deben ser numeros.")
  }

  if (peso <= 0 || altura <= 0) {
    stop("El peso y la altura deben ser mayores a cero.")
  }

  peso / (altura^2)
}

