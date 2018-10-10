# carrega lib xlsx
library('xlsx')
# lê a planilha 'exercicio1' e atribui na variável dados
dados <- read.xlsx("./data/exercicio8.xls", sheetIndex = 1)

aux <- data.matrix(dados)
as.array(aux)

tabela <- table(aux)

freq <- prop.table(tabela) * 100

jpeg('graphics/ex08_histograma.jpeg')

hist(aux, 
     breaks = 10,
     ylim = c(0, 25),
     labels = TRUE, 
     main = "Histograma de frequência",
     ylab = "Frequência",
     xlab = "Altura em metros",
     col = "cyan")

dev.off()
