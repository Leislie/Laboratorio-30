# Hecho con gusto por Leislie R. Manjarrez O.

# Laboratorio 30- Datos ordenados- Unir (merge) dos bases de datos

# Llamar libreria de data.table
library(data.table)

# Ubicar ruta datos a utilizar (base1)
choose.files()

# Ubicar ruta datos a utilizar (base2)
choose.files()

# Teniendo la ruta de las dos bases a unir se crea una variable por cada una
green.products <- read.csv("C:\\Users\\leisl\\OneDrive\\Doctorado\\Semestre-3\\Temas-Selectos-1-Complejidad-Económica\\Modulo2\\Semana5-Labs-Salas\\Lab-30\\COMPLETE_YEARS_PRODUCTS.csv")
all.products <- read.csv("C:\\Users\\leisl\\OneDrive\\Doctorado\\Semestre-3\\Temas-Selectos-1-Complejidad-Económica\\Modulo2\\Semana5-Labs-Salas\\Lab-30\\green products.csv")

# Hacer que R lee los datos como un dataframe o tabla de datos
green.products <- as.data.table(green.products)
all.products <- as.data.table(all.products)

# Unir ambas tablas o bases mediante las variables comunes (product_code). Visualizar resultado
merge.allproducts = merge(all.products, green.products, by = "product_code")

head(merge.allproducts)

# Unir todo (no solo una variable o parte). Visualizar resultado
merge.full = merge(all.products, green.products, by = "product_code", all.x = T)

head(merge.full)

# Exportar resultado obtenido como csv
write.csv(merge.full, file = "merge.full.csv")

