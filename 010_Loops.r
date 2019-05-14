#podemos usar ciclos
speed <- 64

while(speed > 30){
  print("Slow down!")
  speed <- speed - 7
}

speed

#Podemos utilizar la informacion que se obtiene
#en cada iteracion
speed <- 100

while(speed > 30){
  print(paste("Tu velocidad actual es ", speed))
  if(speed > 48){
    print("Bajar mucha velocidad")
    speed <- speed - 11
  }else{
    print("Bajar poca velocidad")
    speed <- speed - 6
  }
}

#Podemos salirnos del while usando un break
speed <- 200

while(speed > 30){
  print(paste("Velocidad actual ", speed))
  
  if(speed > 100){
    break
  }
  
  if(speed > 40){
    print("Tienes que bajar mucho la velocidad!!")
    speed <- speed - 11
  }else{
    print("Baja poco la velocidad")
    speed <- speed - 4
  }
}

#Bucle desde cero
i <- 1

while(i <= 10){
  print(3 * i)
  if((3 * i) %% 8 == 0){
    break
  }
  
  i <- i + 1
}

#Ciclos FOR
primes <- c(2, 3, 5, 7, 11, 13)

#Existen dos formas de escribir un ciclo FOR en R
#Version 1
for(p in primes){
  print(p)
}

#version 2
for(i in 1:length(primes)){
  print(primes[i])
}

#####################################################
#Utilizando el ejemplo de LinkedIn
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

for(li in linkedin){
  print(li)
}

for(i in 1:length(linkedin)){
  print(linkedin[i])
}

###################################################
nyc <- list(pop = 8425623,
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"),
            capital = FALSE)

#loop version 1
for(info in nyc){
  print(info)
}
  
# Loop version 2
for (i in 1:length(nyc)) {
  print(nyc[[i]])
}


juarez <- list(pob = 1000000,
               barrios = c("las torres", "Anapra", "Pradera", "etc :v"),
               negocios = 123456456789,
               escuelas = 1234567895,
               iglesias = 45678912)

for(j in juarez){
  print(j)
}

#######################################################
#Podemos tener ciclos anindados.
#Definiendo el juego del gato.

d1 <- c("O",  "NA",   "X")
d2 <- c("NA", "O",  "O" )
d3 <- c("X",  "NA",  "X")

ttt_data <- c(d1, d2, d3)
ttt_data

#guardamos la info en una matriz
ttt <- matrix(ttt_data, byrow = TRUE, nrow = 3)
ttt

#obtenemos la informacion de la matriz
for(i in 1: nrow(ttt)){
  for(j in 1: ncol(ttt)){
    print(paste("En el renglon ", i, "y columna ", j, " el juego contiene ", ttt[i,j]))
  }
}

######################################################
#Mezclamos condicionales con bucles
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

#con esto hacemos una comparacion con cada elemento
#del vector
for(li in linkedin){
  if(li > 10){
    print("QUE POPULARTS!")
  }else{
    print("PLox, publica mas!")
  }
  
  if(li > 16){
    print("Que ridiculo, me voy de aqui...")
    break
  }
  
  if(li < 5){
    print("Que pena tu caso")
    next
  }
  
  print(li)
}

######################################################
#Ejemplo del uso de ciclos y condicionales
rquote <- "Este texto servira de apoyo para detectar las letras r hasta que aparezca le letra u"

chars <- strsplit(rquote, split = "")[[1]]
chars

#Creamos la bariable que guardata las letras r
rcount <- 0
for(char in chars){
  if(char == "r"){
    rcount <- rcount + 1
  }
  
  #En este caso dejara de contar cuando encuentre una u
  if(char == "u"){
    break
  }
}

rcount