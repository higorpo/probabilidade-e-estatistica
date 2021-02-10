criancas_masc = data.frame(1:40); criancas_masc
criancas_masc = cbind(criancas_masc, sexo = rep('M', 40)); criancas_masc

criancas_fem = data.frame(1:20); criancas_fem
criancas_fem = cbind(criancas_fem, sexo = rep('F', 20)); criancas_fem
names(criancas_fem)[names(criancas_fem) == 'X1.20'] = 'X1.40'

criancas = rbind(criancas_masc, criancas_fem); criancas

# Amostra aleatória simples
set.seed(1357); amostra = srswor(n = 10, nrow(criancas)); amostra
getdata(criancas, amostra)

# Amostra aleatória estratificada proporcional
prop = table(criancas$sexo) / nrow(criancas); prop
prop = prop * 10; 
set.seed(246); s <- strata(criancas, 'sexo', size = c(7, 3), method='srswor')
getdata(criancas,s)
