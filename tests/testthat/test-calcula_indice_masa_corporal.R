# Cargamos el paquete cli ya que lo usamos para generar los mensajes de error
# No usamos expect_true(library(cli)) porque eso no se debe hacer en tests
# El paquete cli se carga automáticamente ya que está en Imports.

# Test 1: Comprobar el cálculo correcto (Caso base: IMC)
test_that("El cálculo de IMC es correcto para valores conocidos", {
  # Valores: Peso 3.5 kg, Altura 40 cm
  peso_ejemplo <- 3.5
  altura_ejemplo <- 40

  # Cálculo manual esperado (3.5 / 40^2 = 0.0021875)
  imc_esperado <- 0.0021875

  # Usamos expect_equal con tolerancia para números flotantes (dobles)
  # Esto es crucial para comparar resultados numéricos en R
  testthat::expect_equal(
    calcular_indice_masa_corporal(peso_ejemplo, altura_ejemplo),
    imc_esperado,
    tolerance = 1e-6 # Una pequeña tolerancia para la precisión de la computadora
  )
})

# --- Tests de Programación Defensiva (CHEQUEO DE ARGUMENTOS) ---

# Test 2: Comprobar errores cuando los argumentos NO son numéricos
test_that("Lanza error si el peso o la altura no son números (cli::cli_abort)", {
  # 1. Chequeo de peso no numérico
  testthat::expect_error(
    calcular_indice_masa_corporal("peso", 40),
    # El patrón de error debe coincidir con tu mensaje de cli::cli_abort
    regexp = "deben ser num.ricos",
    class = "error"
  )

  # 2. Chequeo de altura no numérica
  testthat::expect_error(
    calcular_indice_masa_corporal(3.5, "cuarenta"),
    regexp = "deben ser num.ricos",
    class = "error"
  )
})

# Test 3: Comprobar errores cuando los valores son negativos o cero
test_that("Lanza error si los valores son negativos o cero", {
  # 1. Altura cero
  testthat::expect_error(
    calcular_indice_masa_corporal(3.5, 0),
    regexp = "mayores a cero"
  )

  # 2. Peso negativo
  testthat::expect_error(
    calcular_indice_masa_corporal(-1, 40),
    regexp = "mayores a cero"
  )
})
