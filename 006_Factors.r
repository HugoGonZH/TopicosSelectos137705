#Podemos asignar factores a una variable, esto para
#limitar el numero de categorias

#Para esto podemos obtener los "niveles de factores"
#o factor levels el cual obtendra la cantidad de
#factores que existen en un vector
sex_vector <- c("Male", "Female", "Female", "Male", "Male")
sex_vector

factor_sex_vector <- factor(sex_vector)
factor_sex_vector

##################################################
#En R se puede categorizar las variables de dos formas
#de forma nominal y ordinal
#NOMINAL: variables que no se pueden ordenar
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
animals_vector

#Obtenemos de que tipo son las variables del vector
class(animals_vector) 

#ordenamos utilizando factor()
factor_animals_vector <- factor(animals_vector)
factor_animals_vector


#ORDINAL: variables que si se pueden ordenar
temperature_vector <- c("High", "Low", "High", "Low", "Medium")
temperature_vector

factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector

##################################################
#Podemos cambiar el nombre de las variables de 
#los factores
survey_vector <- c("M", "F", "F", "M", "M")
survey_vector

factor_survey_vector <- factor(survey_vector)
factor_survey_vector

#Hay que tener cuidado en la manera en la que sustituimos
#los valores, ya que estos se cambiaran en la manera  
#en el que se creo el factor. En este caso fue de 
#manera alfabetica, por lo tanto queda F y M
#sustituyendo F por Female y M por Male
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector

#tambien podemos obtener un resumen de la cantidad
#de datos que tienen los factores o vectores
summary(survey_vector)
summary(factor_survey_vector)

#Por ultimo, no se pueden comparar datos de un factor
male <- factor_survey_vector[1]
female <- factor_survey_vector[2]

male > female

##################################################
#Podemos ordenar diferentes factores
speed_vector <- c("medium", "slow", "slow", "medium", "fast")
speed_vector

#por default los factores guardan los datos de
#forma desordenada, para guardarlo de manera ordenara
#se tienen que agregar dos valores
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "medium", "fast"))
factor_speed_vector

summary(factor_speed_vector)

#Teniendo el factor ordenado, podemos hacer comparaciones
da2 <- factor_speed_vector[2]
da2

da5 <- factor_speed_vector[5]
da5

da2 > da5

