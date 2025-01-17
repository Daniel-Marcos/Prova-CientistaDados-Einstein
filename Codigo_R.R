dados<-read.table("PENSE_AMOSTRA1_ALUNO.txt",header=T)
attach (dados)

#Que idade voc� tinha quando tomou a primeira dose de bebida 
# alco�lica? (Uma dose equivale a uma lata de cerveja ou uma ta�a de vinho ou uma dose de cacha�a ou u�sque etc)(VB05003))

tabela.IdadeBebida<-table(VB05003)
tabela.IdadeBebida
barplot(tabela.IdadeBebida, las=1,ylab="Frequ�ncia",xlab="Idade")

#E qual foi a m�dia de jovens do sexo masculino e feminino que mais consomem bebida alco�lica? (VB05003,VB0100)

tapply(VB05003,VB01001, mean)
boxplot(VB05003~VB01001, las=1, ylab="Idade", xlab="Sexo")

#Quantos amigos seus consomem bebida alco�lica? (VB05010) 

tabela1.QTDAMIGOS<-table(VB05010)
tabela1.QTDAMIGOS
barplot(tabela1.QTDAMIGOS, las=1,ylab="Frequ�ncia",xlab="Amigos")

##NOS �LTIMOS 30 DIAS, na maioria das vezes, como voc� conseguiu a bebida que tomou? (VB05006A)

tabela2.CONSEGUIU<-table(VB05006A)
tabela2.CONSEGUIU
barplot(tabela2.CONSEGUIU, las=1,ylab="Frequ�ncia",xlab="Nos �timos 30 dias")

#Que idade voc� tinha quando usou droga como maconha,
 coca�na, crack, cola, lol�, lan�a-perfume, ecstasy, oxy ou outra, pela primeira vez?(VB06002)

tabela3.IdadeDrogas<-table(VB06002)
tabela3.IdadeDrogas
barplot(tabela3.IdadeDrogas, las=1,ylab="Frequ�ncia",xlab="Idade")

#Quantos amigos seus usam drogas?(VB06006)

tabela4.UsamDrogas<-table(VB06006)
tabela4.UsamDrogas
barplot(tabela4.UsamDrogas, las=1,ylab="Frequ�ncia",xlab="Amigos que usam drogas")

