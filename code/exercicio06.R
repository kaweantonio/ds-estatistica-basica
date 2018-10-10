# carrega lib xlsx
library('xlsx')
# lê a planilha 'exercicio1' e atribui na variável dados
dados <- read.xlsx("data/exercicio6.xls", sheetIndex = 1)


jpeg('graphics/ex06_grafico.jpeg')

par(mar=c(5,5,4,5)) 

ordena <- sort(dados$NÂº.pessoas, decreasing=T)

y <- cumsum(ordena) / total * 100

grafico <- barplot(ordena,
                   ylim=c(0, 1.1 * max(y, na.rm=T)),
                   axes=F,
                   names.arg=dados$Qualidade[order(dados$NÂº.pessoas, decreasing=T)],
                   cex.names=.8)
        
total <- sum(dados$NÂº.pessoas)

axis(side=2, at=seq(0,100, 10), labels=seq(0, 100, 10), las=1)
axis(side=4, at=c(0,y), labels=paste(c(0, round(y)), '%'), las=1, col='cyan4', col.axis='cyan4')

text(grafico, ordena + 3, ordena)

lines(grafico, y, type='b', cex=0.7, pch=19, col='cyan4')

dev.off()
