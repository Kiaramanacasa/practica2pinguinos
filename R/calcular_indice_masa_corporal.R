#' Calcular \u00edndice de Masa Corporal (IMC)
#'
#' Calcula el IMC utilizando peso en kilogramos y altura en cent\u00edmetros.
#'
#' @param peso_kg Un vector num\u00e9rico con el peso en kilogramos (kg).
#' @param altura_cm Un vector num\u00e9rico con la altura en cent\u00edmetros (cm).
#' @return Un vector num\u00e9rico con el valor del IMC.
#' @export
#'
#' @examples
#' calcular_indice_masa_corporal(3.5, 40)
calcular_indice_masa_corporal <- function(peso_kg, altura_cm) {
  # Programaci\u00f3n Defensiva: Chequeo de tipo de argumento
  if (!is.numeric(peso_kg) || !is.numeric(altura_cm)) {
    cli::cli_abort(
      "Los argumentos {.var peso_kg} y {.var altura_cm} deben ser num\u00e9ricos."
    )
  }

  # Programaci\u00f3n Defensiva: Chequeo de valores positivos
  if (any(peso_kg <= 0) || any(altura_cm <= 0)) {
    cli::cli_abort(
      "Los valores de peso y altura deben ser mayores a cero."
    )
  }

  # Nota: Las notas y comentarios dentro del cuerpo de la funci\u00f3n
  # tambi\u00e9n deben corregirse.
  # Nota: IMC se calcula como kg/m^2. Si la altura viene en cm, debes dividirla
  # por 100 antes de elevarla al cuadrado. Lo dejo como lo ten\u00edas (asumiendo cm)
  # pero si tu profe usa la f\u00f3rmula standard, corr\u00edgelo.

  # Calcular el IMC
  # imc <- peso_kg / ( (altura_cm / 100)^2 ) # Si se usa la f\u00f3rmula kg/m^2
  imc <- peso_kg / (altura_cm^2)

  return(imc)
}
