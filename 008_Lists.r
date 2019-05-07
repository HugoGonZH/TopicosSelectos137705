#Podemos crear listas, que guardan valores de
#cualquier tipo
my_vector <- 1:10
my_vector

my_matrix <- matrix(1:9, ncol = 3)
my_matrix

my_df <- mtcars[1:10,]
my_df

my_list <-list(my_vector, my_matrix, my_df)
my_list

#################################################
#Podemos nombrar los elementos de una lista
mov <- "The shining"
act <- c("Jack Nicholson", "Shelley Duvall",   "Danny Lloyd", "Scatman Crothers",  "Barry Nelson")
comments <- c("Best Horror Film I Have Ever Seen",
              "A truly brilliant and scary film from Stanley Kubrick",
              "A masterpiece of psychological horror")
scores <- c(4.5, 4, 5)
sources <- c("IMDb1", "IMDb2", "IMDb3")

#Dataframe
rev <- data.frame(scores, sources, comments)

#List
shining_list <- list(moviename = mov, actors = act, reviews = rev)
shining_list

################################################
#Podemos seleccionar elementos especificos de la
#lista. Se puede usar el nombre despues del signo $
shining_list$actors

#tambien se puede usar los corchetes
shining_list[[2]]

#Para seleccionar un elemento en especifico, se
#utilizan otros corchetes
shining_list$actors[2]

################################################
#Podemos agregar nuevos valores a la lista
shining_list_full <- c(shining_list, year = 1980)
shining_list_full