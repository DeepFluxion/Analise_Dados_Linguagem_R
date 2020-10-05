# Vetor de valores v1 (Feijoada)
v1 <- c(24,27,29,30,32,58,64,64,65)

# Vetor de valores v1 (Feijoada)
v2 <- c(10,25,20,36,28,38,50,60,69)

# Calculado a correlação
cor(v1,v2)

plot(v1,v2, cex=2.5, 
     main = 'Correlação entre Quantidade feijoada e Capirinhas', 
     pch=19,
     ylab='Quantidade de Caipirinhas no mês',
     xlab='Quantidade de Feijoadas no mês',
     cex.lab=1.5,
     cex.main=1.5)

# Quantidade de feijoadas vendidas entre nov/18 e out/20
v1<-c(30,47,25,37,43,65,38,60,35,39,36,60,24,27,29,30,32,58,64,64,65,26,64,51)
# Quantidade de caipirinhas vendidas entre nov/18 e out/20
v2<-c(63,48,16,47,16,41,29,30,32,12,13,30,10,25,20,36,28,38,50,60,69,23,48,49)
# Quantidade de refrigerantes vendidas entre nov/18 e out/20
v3<-c(87,92,54,58,116,114,85,118,51,64,75,110,45,82,84,90,43,128,123,148,120,55,114,79)
# Quantidade de refrigerantes cervejas entre nov/18 e out/20
v4<-c(71,101,60,75,76,145,68,111,75,86,83,120,33,64,62,51,60,129,143,118,126,50,115,113)


# Correlação entre Feijoada e Caipirinahs
cor(v1,v2)

# Correlação entre Feijoada e Refrigerantes
cor(v1,v3)

# Correlação entre Feijoada e Cervejas
cor(v1,v4)

plot(v1,v2, cex=2.5, 
     main = 'Correlação entre Quantidade Feijoada e Capirinhas', 
     pch=19,
     ylab='Quantidade de Caipirinhas no mês',
     xlab='Quantidade de Feijoadas no mês',
     cex.lab=1.5,
     cex.main=1.5)

plot(v1,v3, cex=2.5, 
     main = 'Correlação entre Quantidade Feijoada e Cervejas', 
     pch=19,
     ylab='Quantidade de Cervejas no mês',
     xlab='Quantidade de Feijoadas no mês',
     cex.lab=1.5,
     cex.main=1.5)

plot(v1,v2, cex=2.5, 
     main = 'Correlação entre Quantidade Feijoada e Refrigerantes', 
     pch=19,
     ylab='Quantidade de Refrigerantes no mês',
     xlab='Quantidade de Feijoadas no mês',
     cex.lab=1.5,
     cex.main=1.5)

cons <- data.frame(v1, v2, v3,v4)
names(cons)=c('Feijoada','Caip','Cerv','Refr')
head(cons)

summary(cons)

boxplot(cons)

cor(cons)

pairs(cons)

library(repr)
options(repr.plot.width=12, repr.plot.height=12)
pairs(cons)

library(repr)
options(repr.plot.width=12, repr.plot.height=12)
pairs(cons,
     cex=2.5,
     pch=19,
     cex.axis=2.5,
     cex.labels=3.0)

#função retirada do help(pairs)
panel.hist <- function(x, ...)
{
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(usr[1:2], 0, 1.5) )
  h <- hist(x, plot = FALSE)
  breaks <- h$breaks; nB <- length(breaks)
  y <- h$counts; y <- y/max(y)
  rect(breaks[-nB], 0, breaks[-1], y, col = "gray", ...)
}
pairs(cons, diag.panel = panel.hist, cex=2.5, pch = 19, cex.lab=2.5, cex.axis=2.5, cex.main=2.5, cex.labels = 3.5)

#função retirada do help(pairs)
panel.cor <- function(x, y, digits = 2, prefix = "", cex.cor, ...)
{
  usr <- par("usr"); on.exit(par(usr))
  par(usr = c(0, 1, 0, 1))
  r <- abs(cor(x, y))
  txt <- format(c(r, 0.123456789), digits = digits)[1]
  txt <- paste0(prefix, txt)
  if(missing(cex.cor)) cex.cor <- 0.8/strwidth(txt)
  text(0.5, 0.5, txt, cex = cex.cor * r*2.5)
}
pairs(cons, 
      diag.panel = panel.hist, 
      upper.panel = panel.cor, 
      cex=2.5, 
      pch = 19, 
      cex.lab=2.5, 
      cex.axis=2.5, 
      cex.main=2.5, 
      cex.labels = 2.5)

#panel.smooth já existe como função no R
pairs(cons, diag.panel = panel.hist, upper.panel = panel.cor,
      lower.panel = panel.smooth, cex=2.5, pch = 1, cex.lab=2.5, cex.axis=2.5, cex.main=2.5, cex.labels = 3.5)

install.packages("GGally")

library(repr)
library(repr)
options(repr.plot.width=8, repr.plot.height=8)
library("GGally")
ggcorr(cons, label=T, size=8, label_size = 12)
