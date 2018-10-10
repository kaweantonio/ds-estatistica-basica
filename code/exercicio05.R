# carrega lib xlsx
library('xlsx')
# lê a planilha 'exercicio1' e atribui na variável dados
dados <- read.xlsx("./data/exercicio5.xls", sheetIndex = 1)

jpeg('graphics/ex05_grafico.jpeg')

barplot(dados$NÂº.pessoas,
        ylim = c(0,50),
        main='Exercicio 05',
        xlab = 'Marcas',
        ylab = 'Quantidade de pessoas',
        col = rainbow(5),
        cex.names = .8,
        names.arg = c("A", "B", "C", "D", "E")
        )

dev.off()
