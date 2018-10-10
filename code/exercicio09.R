# carrega lib xlsx
library('xlsx')
# lê a planilha 'exercicio1' e atribui na variável dados
dados <- read.xlsx("./data/exercicio9.xls", sheetIndex = 1)

freq <- table(cut(dados$SalÃ.rios, seq(4,24,2)))
freq

jpeg('graphics/ex09_histograma.jpeg')

hist(dados$SalÃ.rios, 
     breaks = 10,
     xlim= c(0,25),
     ylim = c(0, 10),
     labels = TRUE, 
     main = "Histograma de frequência",
     ylab = "Frequência",
     xlab = "Salários",
     col = "cyan")

dev.off()
