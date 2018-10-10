# carrega lib xlsx
library('xlsx')
# lê a planilha 'exercicio1' e atribui na variável dados
dados <- read.xlsx("./data/exercicio3.xls", sheetIndex = 1)

numFilhos <- dados$Filhos
numFamilias <- dados$Familias

#calcula mediana
mediana <- 0
aux <- 0

for (i in 1:7){
  aux <- aux + dados$Familias[i]
}

# determina elemento central
c <- floor(aux / 2)

# determina onde se situa o elemento central
aux <- 0
for (i in 1:7){
  aux <- aux + dados$Familias[i]
  if (aux > c) break
}

mediana <- dados$Filhos[i]

#determina moda
maximo <- max(dados$Familias)

for (i in 1:7){
  if (dados$Familias[i] == maximo) break
}

moda <- dados$Filhos[i]

grafico <- c(mediana, moda)

jpeg('graphics/ex03_medidas.jpeg')

barplot(grafico,
        main='Exercicio 03',
        col = rainbow(2),
        las = 2,
        cex.names = .8,
        names.arg = c("Mediana", "Moda")
        )

dev.off()
