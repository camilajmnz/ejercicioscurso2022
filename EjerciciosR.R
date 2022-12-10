#Autor:Beatriz Beltrán
#Fecha:Diciembre 06 de 2022
#Objetivo: En este Scrpt desarrrollo

#Ejercicio 1####

#calcula el seno y coseno de 90

respcos<-cos(90)
respsin<-sin(90)

#Ejercicio 2####

#Ejercicio: selecciona la columna 2 de y completa. 

y <- matrix(1:20, ncol = 4)
y[,2]
#[1]  6  7  8  9 10

#Ejercicio 3####

#Ejercicio: busca ayuda sobre la función ‘hist’.
?hist
help("hist")

#Ejercicio 4####


#Ejercicio: salva los datos de la variable ‘taire’ 
#en un fichero de texto llamado ‘taire_datos’ 
#separado por punto y coma indicando la coma 
#como separador decimal.
cibmeteo<-read.table("aula_invertida_versionoffline/Intro a R/cibmeteo.txt", header=TRUE, sep="\t")
cibmeteo
dim(cibmeteo)
names(cibmeteo)
summary(cibmeteo)
plot(cibmeteo$temperature, type="l", col = "grey")
fecha <- paste("year, month, day, sep" = "-")
fecha <- strptime(fecha, "%Y-%m-%d")
fecha_txt <- as.character(fecha)
taire <- as.data.frame(
  +    cbind(tapply("temperature", list(fecha_txt), min),
             +          tapply("temperature", list(fecha_txt), max),
             +          tapply("temperature", list(fecha_txt), mean)))

detach(cibmeteo)
colnames(taire) <- c('tmin', 'tmax', 'tavg')
colnames(taire)
attach(cibmeteo)
tapply(temperature, list(month, year), mean)

write.table(taire, file = "taire_datos.txt", sep = ";", dec = ",")

#Ejercicio 5####
#crea la gráfica para explorar visualmente la relación entre las dos variables.

x<- 1:100
x
y<- 2.5*x + 31 + (rnorm(100) * 9)
y
plot(x,y)


