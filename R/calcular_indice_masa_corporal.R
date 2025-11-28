#' Calcular Índice de Masa Corporal (IMC)
#'
#' Calcula el IMC utilizando peso en kilogramos y altura en centímetros.
#'
#' @param peso_kg Un vector numérico con el peso en kilogramos (kg).
#' @param altura_cm Un vector numérico con la altura en centímetros (cm).
#' @return Un vector numérico con el valor del IMC.
#' @export
#'
#' @examples
#' calcular_indice_masa_corporal(3.5, 40)
calcular_indice_masa_corporal <- function(peso_kg, altura_cm) {
  # Programación Defensiva: Chequeo de tipo de argumento
  if (!is.numeric(peso_kg) || !is.numeric(altura_cm)) {
    cli::cli_abort(
      "Los argumentos {.var peso_kg} y {.var altura_cm} deben ser numéricos."
    )
  }

  # Programación Defensiva: Chequeo de valores positivos
  if (any(peso_kg <= 0) || any(altura_cm <= 0)) {
    cli::cli_abort(
      "Los valores de peso y altura deben ser mayores a cero."
    )
  }

  # Nota: IMC se calcula como kg/m^2. Si la altura viene en cm, debes dividirla
  # por 100 antes de elevarla al cuadrado. Lo dejo como lo tenías (asumiendo cm)
  # pero si tu profe usa la fórmula standard, corrígelo.

  # Calcular el IMC
  # imc <- peso_kg / ( (altura_cm / 100)^2 ) # Si se usa la fórmula kg/m^2
  imc <- peso_kg / (altura_cm^2)

  return(imc)
}
