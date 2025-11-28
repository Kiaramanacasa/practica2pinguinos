test_that("calcula correctamente el IMC en casos validos", {
  expect_equal(
    calcular_indice_masa_corporal(3.5, 0.40),
    3.5 / (0.40^2)
  )

  expect_equal(
    calcular_indice_masa_corporal(10, 1),
    10
  )
})

test_that("lanza error si peso o altura no son numericos", {
  expect_error(calcular_indice_masa_corporal("peso", 40))
  expect_error(calcular_indice_masa_corporal(3.5, "altura"))
})

test_that("lanza error si peso o altura son menores o iguales a cero", {
  expect_error(calcular_indice_masa_corporal(-1, 0.4))
  expect_error(calcular_indice_masa_corporal(3.5, 0))
})

