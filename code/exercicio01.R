# carrega lib xlsx
library('xlsx')
# lê a planilha 'exercicio1' e atribui na variável dados
dados <- read.xlsx("./data/exercicio1.xls", sheetIndex = 1)

# armazena coluna de taxa de juros
tx <- dados$Taxas.de.juros

# média
media <- mean(tx)

# mediana
mediana <- median(tx)

# variância
variancia <- var(tx)

# desvio padrão
desvio <- sd(tx)

# valor mínimo
minimo <- min(tx)

# valor máximo
maximo <- max(tx)

#quartil 1
quartil1 <- quantile(tx, c(0.25))

#quartil 3
quartil3 <- quantile(tx, c(0.75))

grafico <- c(media, mediana, variancia, desvio, minimo, maximo, quartil1, quartil3)

jpeg('graphics/ex01_medidas.jpeg')

barplot(grafico,
        main='Exercicio 01',
        col = rainbow(8),
        horiz = TRUE,
        las = 2,
        cex.names = .8,
        names.arg = c("Média", "Mediana", "Variância", "Desvio P.", "Mínimo", "Máximo", "Quartil 1", "Quartil 3")
        )

dev.off()
