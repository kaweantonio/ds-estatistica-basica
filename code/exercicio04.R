# carrega lib xlsx
library('xlsx')
# lê a planilha 'exercicio1' e atribui na variável dados
dados <- read.xlsx("./data/exercicio4.xls", sheetIndex = 1)

tabela <- dados$SalÃ.rios

freq <- prop.table(table(tabela))

jpeg('graphics/ex04_histograma.jpeg')

hist(tabela, 
     breaks = 10, 
     labels = TRUE, 
     main = "Histograma de frequência",
     ylab = "Frequência",
     xlab = "Salários mínimos",
     col = "cyan")

dev.off()
