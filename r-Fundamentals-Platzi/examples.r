print('Hola mundo')

x <- 86
x

View(orangeEc)

Oficina <- 8
Estudio <- 3
Ejercicio <- 1
Tiempo_al_dia <- Oficina + Estudio + Ejercicio
Tiempo_al_dia

Actividad_1 <- 0.3
Actividad_2 <- 0.3
Actividad_3 <- 0.4

Nota_1 <- 4.0
Nota_2 <- 4.6
Nota_3 <- 3.0

Nota_a_1 <- Nota_1 * Actividad_1
Nota_a_1
Nota_a_2 <- Nota_2 * Actividad_2
Nota_a_2
Nota_a_3 <- Nota_3 * Actividad_3
Nota_a_3

Nota_final <- Nota_a_1 + Nota_a_2 + Nota_a_3
Nota_final


#Tipos de Datos

#Ejercicios con mtcars.csv files

#Para conocer la estructura del data set 
str(mtcars)

# Nos va a devolver las características generales:
# 'data.frame':	32 obs. of  12 variables:
#  y los tipos de datos de las columnas

# ?mtcars nos da la información del dataset, ejemplo fecha de creación o la nomenclatura utilizada para cada columna
# En el caso de este data set vs y am no son usados como integer sino como boleanos
?mtcars

# Para conocer la estructura de una variable de un dataset

class(mtcars$vs)

# Para tranformar una variable, en este caso las que estan como integer pero se usan como booleanas

mtcars$vs = as.logical(mtcars$vs)
class(mtcars$vs)
mtcars$am = as.logical(mtcars$vs)

str(mtcars)

str(orangeEc)

#'data.frame':	17 obs. of  13 variables: , donde las variables son las columnas y las observaciones los registros

# summary muestra el resumen del data set, min, median, mean, max, 1st quartil y 3rd quaril

summary(orangeEc)
summary(mtcars)

# Transformacion de una variable

# En este caso transformamos wt que estaba en libras a una unidad de medida que nosotros ocupemos, en este caso los kilos
wt <- (mtcars$wt*1000)/2

summary(mtcars)

mtcars.new <- trasform(mtcars,wt=wt*1000/2)
mtcars.new

# El nuevo data set que creamos a partir de mtcars con los datos de wt transformados
summary(mtcars.new)


# Vectores, contenedores c que guardan datos de un solo tipo

tiempo.programacion.semanal <- c(45,60,35,20,40)
tiempo.idiomas.semanal <- c(30,25,35,45,60)

tiempo.estudio <- tiempo.programacion.semanal + tiempo.idiomas.semanal

tiempo.estudio

dias.estudio <- c('lunes','martes','miercoles','jueves','viernes')
dias.estudio

dias.mas.idioma <- c(FALSE,FALSE,FALSE,TRUE,TRUE)
dias.mas.idioma


# Calcular cuando dedique mas tiempo a estudiar idiomas qu eprogramacion 
tiempo.estudio

