#=== Biblioteca
#install.packages('sampling') # instalar o pacote sampling
library(sampling)

#=== Conjunto de dados
data("CO2") # carregar o conjunto de dados
dim(CO2) # dimens�o dos dados
head(CO2) # In�cio dos dados

#=== Amostragem aleat�ria simples
s <- srswor(n=6, nrow(CO2)); s # tamanho da amostra n=6
amostra <- getdata(CO2,s); amostra # coletar a amostra gerada

# Para conseguir replicar o resultado, utilizamos a fun��o set.seed()
set.seed(1); s <- srswor(n=6, nrow(CO2))
amostra <- getdata(CO2,s); amostra

#=== Amostragem aleat�ria sistem�tica
s_sis <- function(x, n)
{
  if(n%%1 != 0) stop('n deve ser um n�mero inteiro')
  
  interv <- floor(nrow(x)/n)
  ap <- c(sample(1:interv, 1)) # a fun��o sample gera n�meros aleat�rios
  
  for(i in 2:n) ap[i] <- ap[i-1] + interv
  sel <- as.data.frame(x[ap,])
  
  return(sel)
}

amostra_sist <- s_sis(CO2, 6); amostra_sist # tamanho da amostra n=6

#=== Amostragem aleat�ria estratificada proporcional
n <- 6 # tamanho da amostra
prop <- table(CO2$Type)/nrow(CO2) # propor��o dos estratos na popula��o
prop * n # tamanho da amostra a ser coletada por estrato
s <- strata(CO2, 'Type', size = c(3,3), method='srswor')
amostra <- getdata(CO2,s); amostra