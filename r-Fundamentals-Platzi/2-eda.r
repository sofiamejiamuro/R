# EDA (Exploratory Data Analysis)

# La importancia de visualizar los datos antes de comenzar la formula estadistica

# CUARTETO DE ANSCOMBE: la importancia de visualizar los datos antes de enfocarnos en la formula estadistica

# Tipos de visualizacion para EDA: 

# HISTOGRAMA:  Las barras van pegadas, el orden en el eje x es de mayor a menor, presenta lo que hay y lo que no hay, los numeros no se pueden convertir en etiquetas
# vs grafica de barras: cualquier orden en el eje x, los numeros se pueden volver etiquetas

# SCATTERPLOT: se mezclan variables continuas o datos numéricos, no hay etiquetas o variables categorias, los puntos no se pueden unir, la variable independiente va en el eje x y la variable independiente en el eje y
# VS grafica de lineas: se parece más a una serie de tiempo, en esta sí podemos unir los puntos porque estos muestran una evolución o secuencia.

# BOXPLOT: Muestra los cinco elementos clave en estadistica descriptiva,: min, max, primer quartil, mediana o segundo quartill y tercer quartil

# EDA con scatterplot 

# EDA mtcars
#plot(eje Y ~ eje X,
#     nombre x, nombre y,
#     titulo del scatterplot)

plot(mtcars$mpg ~ mtcars$cyl,
    xlab="cilindro", ylab="millas por galón",
    main="Relacion cilindros por galon")

plot(mtcars$mpg ~ mtcars$hp,
     xlab="caballos de fuerza", ylab="millas por galón",
     main="Relacion caballos de fuerza y millas por galón")

#EDA orangeEc
plot(orangeEc$Unemployment ~ orangeEc$Education.invest...GDP,
     xlab="Inversion educacion (%PIB)", ylab="Desempleo",
     main="Relación entre la inversion en educacion y el desempleo")

plot(orangeEc$GDP.PC ~ orangeEc$Creat.Ind...GDP,
     xlab="APorte economía naranja al PIB", ylab="PIB",
     main="Relación entre el PIB  y el aporte de la economia naranja ")

# EDA Histogramas
install.packages("ggplot2")
library(ggplot2)

qplot(mtcars$hp,
     geom="histogram",
     xlab="caballos de fuerza",
     main="Carros según caballos de fuerza")






