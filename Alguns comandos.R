getwed()
setwd()
seq(from=1, to=3, by=0.5)
sqrt(5)
exp(1)
log(exp(1))
log(10, base=10)

numeros = c(1,2,3)
numeros = 1:3

class(numeros)
length(numeros)

logico = c(TRUE, FALSE, TRUE)

ls() # listar objetos

rm(numeros) # removendo objetos

juntos = c(numeros, logico)

juntos = data.frame(numeros, logico)

# Manipulando um data frame
data() # exibe todos os data sets
data(iris) # carrega um data frame
iris # mostra um data frame
View(iris) 
head(iris)
tail(iris, 10)

length(iris)
dim(iris) # dimensão do data frame
str(iris) # estrutura do data frame
summary(iris) # resumo das variaveis contidas no data frame

names(iris)

iris$Sepal.Length # O caractere $ indica que estamos selecionando uma variavel especifica

iris[1,1] # observação da primeira linha, primeira coluna
iris[1,] # obseração da primeira linha
iris[1:3,] # observação das tres primeiras linhas
iris[c(1,4,6),] #observação das linhas 1, 4 e 6
head(iris[,-5]) # todas as colunas menos a 5a coluna

# Manipulando um data frame parte 3
data(iris)
iris2 = iris
head(iris2)

iris2 = cbind(iris2, nova = rep(NA, 150)) #adiciona uma nova coluna
head(iris2)

dados = subset(iris, Petal.Length > 5) # pega uma parte dos dados
dim(dados)

dados = subset(iris, Species == 'setosa') # pega uma parte dos dados

dados = subset(iris, Species == 'setosa' & Petal.Length > 5) # pega uma parte dos dados

dados = subset(iris, Species == 'setosa' | Petal.Length > 5) # pega uma parte dos dados

#instalar lib
install.packages('gamlss', dep=T)

# carregar lib
library(gamlss)
require(gamlss)

