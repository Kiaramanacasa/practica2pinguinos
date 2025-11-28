## code to prepare `DATASET` dataset goes here

# Crear un dataset de ejemplo
pinguinos_demo <- data.frame(
  especie = c("Adelie", "Gentoo"),
  peso_kg = c(4.2, 5.1),
  altura_cm = c(38, 45)
)

# Guardar en la carpeta data/
usethis::use_data(pinguinos_demo, overwrite = TRUE)

# Guardar el dataset en la carpeta data/ del paquete
usethis::use_data(pinguinos_demo, overwrite = TRUE)
