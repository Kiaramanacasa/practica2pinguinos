test_that("convertir_pulgadas_a_centimetros funciona y es defensiva", {
  # 1. Prueba b\u00e1sica: 1 pulgada = 2.54 cm
  expect_equal(convertir_pulgadas_a_centimetros(1), 2.54)

  # 2. Prueba con un vector de entradas
  expect_equal(convertir_pulgadas_a_centimetros(c(10, 20)), c(25.4, 50.8))

  # 3. Prueba de programaci\u00f3n defensiva: lanza error si no es num\u00e9rico.
  # El mensaje debe coincidir con el que lanzamos sin tilde (numericos).
  expect_error(
    convertir_pulgadas_a_centimetros("texto"),
    # Cambia el mensaje aqu\u00ed para que coincida con el error real
    "El valor ingresado no es un numero."
  )
})
