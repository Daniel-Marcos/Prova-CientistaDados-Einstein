dados<-read.table("PENSE_AMOSTRA1_ALUNO.txt",header=T)
attach (dados)

#Que idade você tinha quando tomou a primeira dose de bebida 
# alcoólica? (Uma dose equivale a uma lata de cerveja ou uma taça de vinho ou uma dose de cachaça ou uísque etc)(VB05003))

tabela.IdadeBebida<-table(VB05003)
tabela.IdadeBebida
barplot(tabela.IdadeBebida, las=1,ylab="Frequência",xlab="Idade")

#E qual foi a média de jovens do sexo masculino e feminino que mais consomem bebida alcoólica? (VB05003,VB0100)

tapply(VB05003,VB01001, mean)
boxplot(VB05003~VB01001, las=1, ylab="Idade", xlab="Sexo")

#Quantos amigos seus consomem bebida alcoólica? (VB05010) 

tabela1.QTDAMIGOS<-table(VB05010)
tabela1.QTDAMIGOS
barplot(tabela1.QTDAMIGOS, las=1,ylab="Frequência",xlab="Amigos")

##NOS ÚLTIMOS 30 DIAS, na maioria das vezes, como você conseguiu a bebida que tomou? (VB05006A)

tabela2.CONSEGUIU<-table(VB05006A)
tabela2.CONSEGUIU
barplot(tabela2.CONSEGUIU, las=1,ylab="Frequência",xlab="Nos útimos 30 dias")

#Que idade você tinha quando usou droga como maconha,
 cocaína, crack, cola, loló, lança-perfume, ecstasy, oxy ou outra, pela primeira vez?(VB06002)

tabela3.IdadeDrogas<-table(VB06002)
tabela3.IdadeDrogas
barplot(tabela3.IdadeDrogas, las=1,ylab="Frequência",xlab="Idade")

#Quantos amigos seus usam drogas?(VB06006)

tabela4.UsamDrogas<-table(VB06006)
tabela4.UsamDrogas
barplot(tabela4.UsamDrogas, las=1,ylab="Frequência",xlab="Amigos que usam drogas")

