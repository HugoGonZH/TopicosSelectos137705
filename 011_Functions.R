#Podemos conocer algo de informacion de ciertas
#funciones escribiendo lo siguiente

help(sample)

?sample

args(matrix)

args(data.frame)

args(mean)

?mean

#############################################
#Ejemplo funciones
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

avg_li <- mean(x = linkedin)
avg_fb <- mean(facebook)

avg_li
avg_fb

avg_sum <- mean(linkedin + facebook)
avg_sum_trimmed <- mean(linkedin + facebook, trim = 0.2)

avg_sum
avg_sum_trimmed

#Probando cuando el vector tiene valores nulos
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <-c(17, NA, 5, 16, 8, 13, 14)

#si se intenta obtener el promedio muestra error
mean(linkedin)

#Para esto tenemos que quitar los valores nulos
mean(linkedin, na.rm = TRUE)

#############################################
#Funciones dentro de funciones
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <-c(17, NA, 5, 16, 8, 13, 14)

mean(abs(linkedin - facebook), na.rm = TRUE)

#############################################
#Para crear nuestras propias funciones se
#debe realizar de la siguiente manera, donde
#practicamente le estamos asignando a una variable
#los elementos para comportarse como una funcion
Potenciador <- function(x){
  x ^ 2
}

Potenciador(5)

#Funcion que hace sumas
Sumador <- function(a, b){
  a + b
}

Sumador(15, 15)
Sumador(15,-15)

#Tambien hay funciones que no requieren entradas
LanzarDado <- function(){
  number <- sample(1:6, size = 1)
  number
}

LanzarDado()

#Podemos tener respuestas o acciones predefinidas
#en base a los datos que se le introducen a la funcion
potencias <- function(x, explicacion = TRUE){
  y <- x ^ 2
  
  if(explicacion){
    print(paste(x, "la potencia de dos equivale a", y))
  }
  
  return(y)
}

potencias(6, TRUE)

##############################################
linkedin <- c(16, 9, 13,  5, 2, 17, 14)
facebook <- c(17, 7, 5, 16,  8, 13, 14)

verificador <- function(visitas){
  if(visitas >15){
    print("POPULAR!")
    return(visitas)
  }else{
    print("Publica mas :(")
    return(0)
  }
}

verificador(linkedin[1])
verificador(facebook[2])

#Podemos anidar funciones
verificador_total <- function(visitas, suma=TRUE){
  contador <- 0
  
  for(v in visitas){
    contador <- contador + verificador(v)
  }
  
  if(suma){
    return(contador)
  }else{
    return(NULL)
  }
}

verificador_total(linkedin)
verificador_total(facebook)

##############################################
#Instalar paquetes y usar librerias
search()

#Instalamos los paquetes necesarios... cosa que
#en el tutorial no se menciona como hacer para
#este ejemplo >:v
install.packages("ggplot2")
library("ggplot2")

qplot(mtcars$wt, mtcars$hp)
search()