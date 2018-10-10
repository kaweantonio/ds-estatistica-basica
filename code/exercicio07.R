# carrega lib xlsx
library('xlsx')
# lê a planilha 'exercicio1' e atribui na variável dados
dados <- read.xlsx("./data/exercicio7.xls", sheetIndex = 1)

jpeg('graphics/ex07_grafico.jpeg')

barplot(dados$Atendimento,
        ylim = c(0,400),
        main='Exercicio 07',
        xlab = 'Áreas',
        ylab = 'Atendimento',
        col = rainbow(5),
        cex.names = .8,
        names.arg = dados$Ã.reas
        )

dev.off()
