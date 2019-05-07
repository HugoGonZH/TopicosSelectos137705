#Asi se define un vector
numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")
boolean_vector <- c(TRUE, FALSE, TRUE)

#Asi sumamos vectores
A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

total_vector <- A_vector + B_vector
total_vector

###########################################
#Problema del casino
#Creamos primero las variables necesarias
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)

#Asignamos nombres a los elementos del vector
#para agilizar este proceso creamos un vector con
#los nombres de la semana
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

#Con eso podemos asignarle esos nombre a los otros vectores
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

#Calculamos la suma de los vectores para
#para saber las ganancias/perdidas por dia
total_daily <- poker_vector + roulette_vector
total_daily

#Ahora calculamos individualmente el total
#por cada juego
total_poker <- sum(poker_vector)
total_poker

total_roulette <- sum(roulette_vector)
total_roulette

#Posteriormente calculamos la cantidad de ganancias
#por semana
total_week <- total_roulette + total_poker
total_week

#Comparamos si las ganancias obtenidas en poker
#son mas altas que en la ruleta
total_poker > total_roulette

##############################################
#Para seleccionar un elemento en especifico se
#coloca el numero del elemento entre corchetes
poker_wednesday <- poker_vector[3]
poker_wednesday

#Para seleccionar varios elementos al mismo tiempo
#se coloca entre los corchetes un vector con los
#elementos a seleccionar
poker_midweek <- poker_vector[c(2, 3, 4)]
poker_midweek

#Otra manera de hacer lo anterior es usando dos
#puntos entre los elementos que queremos encontrar
roulette_selection_vector <- roulette_vector[2:5]
roulette_selection_vector

#Otra manera de encontrar valores en vectores es
#usando el nombre que tienen las variables
poker_start <- poker_vector[c("Monday", "Tuesday", "Wednesday")]
poker_start

########################################
#Se puede calcular el promedio de ciertos datos de
#los vectores usando la funcion "mean()"
mean(poker_start)

########################################
#Se pueden hacer compaaraciones
selection_vector <- poker_vector > 0
selection_vector

selection_vector <- roulette_vector > 0
selection_vector

#Asimismo podemos obtener unicamente los dias
#donde se tienen numeros positivos
poker_winning_days <- poker_vector[selection_vector]
poker_winning_days

poker_winning_days <- roulette_vector[selection_vector]
poker_winning_days
