x<-1

x

# Atribuindo um conjunto de caracteres (string) à variável x
x <- "Olá mundo!"
x

x <- 3.46
class(x)

x <- 10
class(x)

x <- 10L
class(x)

x <- 3.46
is.numeric(x)

is.integer(x)

x <- "Olá mundo!"
class(x)

nchar(x)

x <- 1:10
x

seq(1,10,2)

rep(1,5)

rep(1:3,2)

x <- runif(5,1,10)
x

x <- rnorm(5,4,1)
x

x <- c(30,10,40,20,80,50,70,100,90)
x

x[1]

min(x)

max(x)

range(x)

sort(x)

rank(x)

x

order(x)

order(x, decreasing=TRUE)

length(x)

sum(x)

mean(x)

median(x)

var(x)

quantile(x)

cardapio <- c("Filé à parmegiana","Feijoada", "Batatas Fritas", "Lasanha à Bolonhesa", 
              "Salada Caprese")

cardapio

cardapio[5]

nchar(cardapio)

length(cardapio)

sort(cardapio)

cardapio

order(cardapio)

precos <- c(32.50, 44.00, 12.00, 35.50, 27.00)

data.frame(Cardápio = cardapio, Preços = precos)

iris <- read.table("https://gist.githubusercontent.com/netj/8836201/raw/6f9306ad21398ea43cba4f7d537619d0e07d5ae3/iris.csv",
header=TRUE,sep=',')

iris

iris

head(iris)

tail(iris)

head(iris,1)

x <- iris$sepal.width
y <- iris$petal.width
plot(x,y,type='p',main = "PLANTA IRIS",xlab = "Sepal Width",ylab= "Petal Width")


x <- iris[,'sepal.width']
y <- iris[,'petal.width']
especie <- iris[,'variety']

library(repr) # A Biblioteca repr serve para ajusta o tamanho dos gráficos em R
options(repr.plot.width=10,repr.plot.height=10) # Ajuste de um gráfco para 10 de largura e 10 de altura
plot(x,y,type='p',main = 'PLANTA IRIS',xlab = 'Sepal Width',ylab= 'Petal Width')
text(x,y,labels=especie,cex=0.8,adj=c(0,-1))

plot(x,y, type='n', main = 'PLANTA IRIS',xlab = 'Sepal Width',ylab= 'Petal Width')
points(x[1:50],y[1:50],col='2',cex=2,pch=19)
points(x[51:100],y[51:100],col='3',cex=2,pch=19)
points(x[101:150],y[101:150],col='4',cex=2,pch=19)
legend("topleft", 
  legend = c('setosa','versicolor','virginica'), 
  pch=c(19,19,19),
  cex = 1.2, 
  text.col = "black",
  col=c('2','3','4'))

plot(x,y, type='n', main = 'PLANTA IRIS',xlab = 'Sepal Width',ylab= 'Petal Width')

plot(x,y, type='n', main = 'PLANTA IRIS',xlab = 'Sepal Width',ylab= 'Petal Width')
points(x[1:50],y[1:50],col='2',cex=2,pch=19)
points(x[51:100],y[51:100],col='3',cex=2,pch=19)
points(x[101:150],y[101:150],col='4',cex=2,pch=19)

plot(x,y, type='n', main = 'PLANTA IRIS',xlab = 'Sepal Width',ylab= 'Petal Width')
points(x[1:50],y[1:50],col='2',cex=2,pch=19)
points(x[51:100],y[51:100],col='3',cex=2,pch=19)
points(x[101:150],y[101:150],col='4',cex=2,pch=19)
legend("topleft", 
  legend = c('setosa','versicolor','virginica'), 
  pch=c(19,19,19),
  cex = 1.2, 
  text.col = "black",
  col=c('2','3','4'))

plot(x,y, type='n', main = 'PLANTA IRIS',xlab = 'Sepal Width',ylab= 'Petal Width')
points(x[1:50],y[1:50],col='2',cex=2,pch=1)
points(x[51:100],y[51:100],col='3',cex=2,pch=2)
points(x[101:150],y[101:150],col='4',cex=2,pch=3)
legend("topleft", 
  legend = c('setosa','versicolor','virginica'), 
  pch=c(19,19,19),
  cex = 1.2, 
  text.col = "black",
  col=c('2','3','4'))

x1 <- 1:10
y1 <- 1:10
plot(x1, y1, type = "n")
points(1:10, rep(8, 10), pch = 0:9, col = 1:10, cex = 1.5)
points(1:10, rep(6, 10), pch = 10:19, col = 1:10, cex = 1.5)
points(1:10, rep(4, 10), pch = c(".", "a", "o", "v", "s","c", "&", "$", "@", "%"), col = 1:10, cex = 1.5)

x1 <- 1:10
y1 <- 1:10
plot(x1, y1, type = "n")
points(1:10, rep(8, 10), pch = 0:9, col = 1:10, cex = 3.5)
points(1:10, rep(6, 10), pch = 10:19, col = 1:10, cex = 3.5)
points(1:10, rep(4, 10), pch = c(".", "a", "o", "v", "s","c", "&", "$", "@", "%"), col = 1:10, cex = 3.5)

head(iris)

plot(x,type='n',xlab='indice',ylab='sepal.width')
lines(iris['sepal.width'])

plot(x,type='n',xlab='indice',ylab='Variedades',ylim=c(0,4))
lines(iris['variety'])

x2 <- 1:9
y2 <- 1:9
plot(x2, y2, type = "n")
lines(c(2, 8), c(8, 8), lwd = 6)
lines(c(2, 8), c(7, 7), lty = 2, lwd = 6)
lines(c(2, 8), c(6, 6), lty = 3, lwd = 6)
lines(c(2, 8), c(5, 5), lty = 4, lwd = 6)
lines(c(2, 8), c(4, 4), lty = 5, lwd = 6)
lines(c(2, 8), c(3, 3), lty = 6, lwd = 6)

quantidade <- tapply(rep(1,150),iris['variety'],sum)
barplot(quantidade,xlab='Espécies',ylab='Frequência')


pie(quantidade)

summary(iris)

 boxplot(iris[1:4])

hist(t(iris['petal.width']),main='Histograma de Petal.Width separado em faixas',xlab='petal.width',
     5,ylab='Frequência')

hist(t(iris['petal.width']),main='Histograma de Petal.Width separado em 3 faixas',xlab='petal.Width',
     3,ylab='Frequência')


