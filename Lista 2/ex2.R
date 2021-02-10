library(sampling)

criancas = data.frame(1:20)

set.seed(1234); amostra = srswor(n = 10, nrow(criancas)); amostra

grupo1 = subset(criancas, (amostra %in% criancas$X1.20)); grupo1

grupo2 = subset(criancas, !(amostra %in% criancas$X1.20)); grupo2
