mtcars

class(mtcars)

#En R podemos mostrar las primeras lineas de un dataset
#utilizando la funcion head() asi como las ultimas lineas
#usando tail()
head(mtcars)
tail(mtcars)

#Una funcion que se utiliza para ver una vista
#general de los datos es usando la funcion str()
#De hecho es preferible usarla cuando se tiene un
#dataset nuevo.
str(mtcars)

################################################
#creando un data frame
#primero tenemos que definir los vectores correspondientes
name <- c("Mercurio", "Venus", "Tierra", "Marte", "Jupiter", "Saturno", "Urano", "Neptuno", "Pluton")
name 

type <- c("Planeta terrestre", "Planeta terrestre", "Planeta terrestre", "Planeta terrestre", "Gigante de gas", "Gigante de gas", "Gigante de gas", "Gigante de gas", "Gigante de gas")
type

diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883, 0.2)
diameter

rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67, 0.5)
rotation

rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, FALSE)
rings

#teniendo todos los vectores se crea el data frame
planets_df <- data.frame(name, type, diameter, rotation, rings)
planets_df

class(planets_df)

#ahora incluso podemos obtener una vista general
#de los datos que tenemos
str(planets_df)


#Al igual que con los vectores o matrices, podemos
#seleccionar elementos en especifico
planets_df[1,3]

planets_df[4,]

#Tambien podemos recuperar datos usando el tipo
#de variable que queremos recuperar
planets_df[1:5, "diameter"]

#Asi mismo podemos recuperar los datos de toda
#una columna utilizando un short-cut
rings_vector <- planets_df$rings
rings_vector

#teniendo esta informacion podemos recuperar
#valores de nombres de nuestro dataframe
planets_df[rings_vector, ]

#Todo lo anterior se puede simplificar utilizando
#la funcion de subset
subset(planets_df, subset = diameter < 1)

#Podemos ordenar los elementos de un dataframe
positions <- order(planets_df$diameter)
positions

planets_df[positions,]