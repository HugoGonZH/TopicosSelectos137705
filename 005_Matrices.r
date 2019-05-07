#Podemos crear matrices utilizando la funcion matrix()
matrix(1:9, byrow = TRUE, nrow = 3)

#Podemos guardar vectores en una matriz
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

box_office <- c(new_hope, empire_strikes, return_jedi)
box_office

star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE)
star_wars_matrix

#Podemos nombrar las filas y columnas de la matriz
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

colnames(star_wars_matrix) <- region
rownames(star_wars_matrix) <- titles
star_wars_matrix

#Existe una forma diferente de hacer las matrices
#con nombre, todo en una sola linea de codigo
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE, dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), c("US", "non-US")))

#Asimismo se puede sumar las filas de la matriz
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector

#Puedes agregar columnas o multiples columnas a
#una matriz existente
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
all_wars_matrix

#Tambien se pueden agregar filas
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A new hope", "The empire strikes back", "Return of the Jedi"),
                                           c("Us", "non-Us")))

box_office2 <- c(474.5, 552.5, 310.7, 338.7, 380.3, 468.5)
star_wars_matrix2 <- matrix(box_office2, nrow = 3, byrow = TRUE,
                           dimnames = list(c("The phantom menace", "Attack of the clones", "Revenge of the sith"),
                                           c("Us", "non-Us")))

all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)
all_wars_matrix

#Al igual que la suma que se hizo en el ejercicio anterior
#se pueden sumar las columnas usando lo siguiente
total_revenue_vector <- colSums(all_wars_matrix)
total_revenue_vector

###############################################
#Podemos seleccionar datos en especifico de una
#matriz
non_us_all <- all_wars_matrix[,2] #Todos los elementos de la segunda columna
non_us_all

mean(non_us_all)  #Promedio de los datos de esa columna

#Seleccion de datos en especificos
#Solo los elemenos del 1 al dos de la segunda columna
non_us_some <- all_wars_matrix[1:2, 2]
non_us_some

mean(non_us_some)

##############################################
#Podemos usar operadores basicos para aplicarlos
#a las matrices
visitors <- all_wars_matrix / 5
visitors

ticket_office <- c(5, 6, 7, 4, 4.5, 4.9)
ticket_prices1 <- matrix(ticket_office, nrow = 3, byrow = TRUE,
                         dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                         c("US", "non-US")))

ticket_office2 <- c(5, 6, 7, 4, 4.5, 4.9)
ticket_prices2 <- matrix(ticket_office2, nrow = 3, byrow = TRUE,
                         dimnames = list(c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith"), 
                                         c("US", "non-US")))

ticket_prices_matrix <- rbind(ticket_prices1, ticket_prices2)


visitors <- all_wars_matrix / ticket_prices_matrix
us_visitors <- visitors[ ,1]
us_visitors