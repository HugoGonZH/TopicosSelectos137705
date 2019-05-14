#Podemos hacer comparaciones y nos devuelven una
#respuesta booleana
-5 * 5 == 5 * 5 #FALSE
5 * 5 == 5 * 5 #TRUE

200 + 1 != 200 + 2 #TRUE
200 + 2 != 200 + 2 #FALSE

#Cuando se comparan caracteres es importante recordar
#que las mayusculas y minusculas son diferentes

"MAYUSCULA" == "mayuscula"
"Letra" == "letra"

#Las variables logicas se pueden comparar con numeros
TRUE == 1

########################################################
#Se pueden hacer comparaciones mayor o menor que
500 * 2 >= 200 * 2 #TRUE
500 * 2 >= 200 * 6 #FALSE

#Compara los caracteres
"raining" <= "raining dogs"
"Raining" <= "raining dogs"
"rae" <= "rae"


########################################################
#Podemos comparar vectores
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

linkedin > 15
linkedin > facebook

#podemos comparar matrices
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)
views

views == 13
views <= 14

#######################################################
#Podemos usar operadores logicos
last  <- tail(linkedin, 1)

5 > last | last > 10
5 > last & last > 10

#tambien se puede usar los operadores logicos con
#matrices y vectores
linkedin
facebook

linkedin > 10 & facebook < 10
linkedin >= 12 | facebook >= 12

views
views > 11 & views <= 14

######################################################

#2.2.3 Blend it al together

######################################################
#CONDICIONALES
#condicional IF
medium <- "LinkedIn"
num_views <- 50

if(medium == "LinkedIn"){
  print("Mostrando informacion")
}

if(num_views > 15){
  print("Cuantas visitas!")
}

#condicional ELSE
medium <- "Facebook"
num_views <- 56

if(medium == "LinkedIn"){
  print("Mostrar informacion")
}else{
  print("Media desconocida")
}

if(num_views > 100){
  print("Wow, un influencer :v")
}else{
  print("Y tu eres?")
}

#condicional ELSE IF
medium <- "Twitter"
num_views <- 210

if(medium == "LinkedIn"){
  print("Mostrar informacion")
}else if(medium == "Facebook"){
  print("Esto es facebook")
}else{
  print("media desconocida")
}

if(num_views > 100){
  print("Que famoso")
}else if(num_views <=100 & num_views > 50){
  print("Como que te reconozco...")
}else{
  print("Y tu eres?")
}


######################################################
#podemos anidar condicionales
num_views <- 600
if(num_views > 1500){
  print("Que popular")
}else if(num_views < 1500 & num_views >500){
  if(num_views < 1000){
    print("creo que te he visto con menos de 1000 vistas")
  }else{
    print("Tu eres el de la tele con mas de 1000 vistas")
  }
}else{
  print("Si bueno, alguien tiene hambre")
}

######################################################
#Ejermplo

li <- 15
fb <- 9

if(li >= 15 & fb >= 15){
  sms <- 2 * (li + fb)
}else if(li < 10 & fb < 10){
  sms <- 0.5 * (li + fb)
}else{
  sms <- li + fb
}

sms