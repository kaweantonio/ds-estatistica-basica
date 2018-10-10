# carrega lib xlsx
library('xlsx')
# lê a planilha 'exercicio1' e atribui na variável dados
dados <- read.xlsx("./data/exercicio2.xls", sheetIndex = 1)

tabela <- dados$Casas

freq <- prop.table(table(tabela)) * 100

jpeg('graphics/ex02_histograma.jpeg')

hist(tabela, 
     breaks = 10, 
     labels = TRUE, 
     main = "Histograma de frequência",
     ylab = "Frequência",
     xlab = "Quantidade de casas",
     col = "cyan")

dev.off()

# média
media <- mean(tabela)

# mediana
mediana <- median(tabela)

# variância
variancia <- var(tabela)

# desvio padrão
desvio <- sd(tabela)

# valor mínimo
minimo <- min(tabela)

# valor máximo
maximo <- max(tabela)

#quartil 1
quartil1 <- quantile(tabela, c(0.25))

#quartil 3
quartil3 <- quantile(tabela, c(0.75))

grafico <- c(media, mediana, variancia, desvio, minimo, maximo, quartil1, quartil3)

jpeg('graphics/ex02_medidas.jpeg')

barplot(grafico,
        main='Exercicio 02',
        col = rainbow(8),
        horiz = TRUE,
        las = 2,
        cex.names = .8,
        names.arg = c("Média", "Mediana", "Variância", "Desvio P.", "Mínimo", "Máximo", "Quartil 1", "Quartil 3")
        )

dev.off()
