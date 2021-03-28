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

tiempo.semanal.programacion <- c(45,60,35,20,40)
tiempo.semanal.idiomas <- c(30,25,35,45,60)

tiempo.estudio <- tiempo.semanal.programacion + tiempo.semanal.idiomas

# Suma los numeros que están en las mismas posiciones del vector
tiempo.estudio

dias.estudio <- c('lunes','martes','miercoles','jueves','viernes')
dias.estudio

dias.mas.estudio.idioma <- c(FALSE,FALSE,FALSE,TRUE,TRUE)
dias.mas.estudio.idioma


# Calcular cuando tiempo más estudié idiomas que programación 
tiempo.estudio

total.tiempo.programacion <- sum(tiempo.semanal.programacion)
total.tiempo.programacion

total.tiempo.idiomas <- sum(tiempo.semanal.idiomas)
total.tiempo.idiomas

total.tiempo.estudio <- total.tiempo.idiomas + total.tiempo.programacion
total.tiempo.estudio

# Para el proposito de la informacion que necesitamos, el uso de vectores no es el adecuado , es mejor el uso de matrices

# MATRIZ -> contienen el mismo tipo de dato, de lo contrario es un dataset
# se leen filas x columnas

matriz.tiempo <- matrix(c(tiempo.programacion.semanal,tiempo.idiomas.semanal),
                        nrow=2, byrow=TRUE)
matriz.tiempo

dias <- c('lunes','martes','miercoles','jueves','viernes')
tiempo <- c("tiempo programación", "tiempo idiomas")

colnames(matriz.tiempo) <- dias
rownames(matriz.tiempo) <- tiempo

matriz.tiempo

colSums(matriz.tiempo)


# Agregar una nueva fila a una matriz

tres.actividades.matriz <- rbind(matriz.tiempo,c(10,20,0,10,15))
tres.actividades.matriz

colSums(tres.actividades.matriz)

# Agregar el nombre "podcast" a la nueva fila

tres.actividades.tiempo <- c("tiempo programación", "tiempo idiomas", "podcast")
row.names(tres.actividades.matriz) <- tres.actividades.tiempo 

tres.actividades.matriz

# Agregar una nueva columna para el sabado

actividades.semana <- cbind(tres.actividades.matriz, c(30, 20, 15))
actividades.semana

# Agregar nombre a la nueva semana

seis.dias <- c('lunes','martes','miercoles','jueves','viernes', 'sabado')
colnames(actividades.semana) <- seis.dias

actividades.semana

# Ubicar un elemento en una matriz matriz[fila,columna]

actividades.semana[1,5]


# OPERADORES

# ex. En el dataframe mtcars en la columna cyl los que sean menores de 6

mtcars[mtcars$cyl<6,]

# ex. ¿Qué país del dataframe orangeEc tiene un GDP.PC mayor o igual a 15000
orangeEc[orangeEc$GDP.PC >= 15000,]

# ¿Qué paises en los que la economía naranja aporta menos de 2% del GDP ?
orangeEc[orangeEc$Creat.Ind...GDP<=2,]

# Crear un subset con las columnas elegidas
newOrangeEx <- subset(orangeEc, Internet.penetration...population > 80 & Education.invest...GDP >= 4.5)

newOrangeEx

# Filtra por Internet.penetration...population > 80 y Education.invest...GDP >= 4.5, solo muestrame la columna  Creat.Ind...GDP
newOrangeEx <- subset(orangeEc, Internet.penetration...population > 80 
                      & Education.invest...GDP >= 4.5,
                      select =Creat.Ind...GDP)
newOrangeEx

# Modificar el nombre de la columna seleccionada
install.packages("plyr")
library(plyr)
rename(orangeEc, c("Creat.Ind...GDP"="AporteEc"))

#FACTOR ->  un tipo de dato que tiene variables categoricas o labels

nivel.curso <- c("Básico","Intermedio","Avanzado")
nivel.curso

# Obtener los primeros seis datos
head(mtcars)
head(orangeEc)

# Obtener los últimos seis datos
tail(mtcars)
tail(orangeEc)

# Modificar enl número de datos
head(mtcars, n=3)

install.packages("dplyr")
library(dplyr)     

#Con este metodo podemos conocer la estructura del dataset al igual que con str()
glimpse(orangeEc)


#LISTA es un superobjeto que permite almacenar cualquier otro objeto: vecotres, matrices, dataframes

mi_vector <- 1:8
mi_matrix <- matrix(1:9, ncol=3)
mi_df <- mtcars[1:4,]

mi_vector
mi_matrix
mi_df

mi_list <- list(mi_vector,mi_matrix,mi_df)
mi_list
