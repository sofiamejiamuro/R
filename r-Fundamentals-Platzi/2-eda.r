# EDA (Exploratory Data Analysis)

# La importancia de visualizar los datos antes de comenzar la formula estadistica

# CUARTETO DE ANSCOMBE: la importancia de visualizar los datos antes de enfocarnos en las formulas estadisticas

# Tipos de visualizacion para EDA: 

# HISTOGRAMA:  Las barras van pegadas, el orden en el eje x es de mayor a menor, presenta lo que hay y lo que no hay, los numeros no se pueden convertir en etiquetas
# vs grafica de barras: cualquier orden en el eje x, los numeros se pueden volver etiquetas

# SCATTERPLOT: se mezclan variables continuas o datos numéricos, no hay etiquetas o variables categorias, los puntos no se pueden unir, la variable independiente va en el eje x y la variable independiente en el eje y
# VS grafica de lineas: se parece más a una serie de tiempo, en esta sí podemos unir los puntos porque estos muestran una evolución o secuencia.

# BOXPLOT: Muestra los cinco elementos clave en estadistica descriptiva,: 
        # min, 
        # max, 
        # primer quartil, 
        # mediana o segundo quartill y 
        #tercer quartil

# EDA con scatterplot 

# EDA mtcars
#plot(eje Y ~ eje X,
#     nombre x, nombre y,
#     titulo del scatterplot)

plot(mtcars$mpg ~ mtcars$cyl,
    xlab="cilindro", ylab="millas por galón",
    main="Relacion cilindros y millas por galon") 

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
# Dataset mtcars

install.packages("ggplot2")
library(ggplot2)

qplot(mtcars$hp,
     geom="histogram",
     xlab="caballos de fuerza",
     main="Carros según caballos de fuerza")


ggplot(mtcars, aes(x=hp)) + 
    geom_histogram(binwidth = 30) +
    labs(x="Canballos de fuerza", y="Cantidad de carros",
         title="Caballos de fuerza en carros seleccionados") +
    theme(legend.position = "none") +
    theme(panel.background = element_blank(), panel.grid.major = element_blank(),
          panel.grid.minor = element_blank()) 
    


ggplot() + geom_histogram(data=mtcars,
                          aes(x=hp), fill="blue", color="red",
                          binwidth = 20) +
    labs(x="Canballos de fuerza", y="Cantidad de carros",
         title="Caballos de fuerza en carros seleccionados") +
    xlim(c(89, 280)) +
    theme(legend.position = "none") +
    theme(panel.background = element_blank(), panel.grid.major = element_blank(),
          panel.grid.minor = element_blank()) 
    

# dataset Economia Naranja

ggplot() + geom_histogram(data=orangeEc,
                          aes(x=GDP.PC), fill="blue", color="red",
                          binwidth = 2000) +
    labs(x="pib per capita", y="Cantidad de países",
         title="pib per capita en paises LATAM") +
    theme(legend.position = "none") +
    theme(panel.background = element_blank(), panel.grid.major = element_blank(),
          panel.grid.minor = element_blank()) 


ggplot() + geom_histogram(data=orangeEc,
                          aes(x=Creat.Ind...GDP), fill="blue", color="red",
                          binwidth = 1) +
    labs(x="APorte Economian naranja al pib en %", y="Cantidad de países",
         title="Contribucion economia naranja al pib en LATAM") +
    theme(legend.position = "none") +
    theme(panel.background = element_blank(), panel.grid.major = element_blank(),
          panel.grid.minor = element_blank()) 

ggplot() + geom_histogram(data=orangeEc,
                          aes(x=Internet.penetration...population), fill="red", color="yellow",
                          binwidth = 5) +
    labs(x="Penetracion internet (%)ppoblkacion", y="Cantidad de países",
         title="Penetracion de internet en pasises latam") +
    theme(legend.position = "none") +
    theme(panel.background = element_blank(), panel.grid.major = element_blank(),
          panel.grid.minor = element_blank()) 
