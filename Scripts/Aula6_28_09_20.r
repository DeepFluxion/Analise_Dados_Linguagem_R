Quantidade <- c(29,30,32,65,65,65,25,25,90)

Quantidade

mean(Quantidade)

median(Quantidade)

Mode <- function(x) {
     ux <- unique(x)
     ux[which.max(tabulate(match(x, ux)))]
}
Mode(Quantidade)

sd(Quantidade)

var(Quantidade)

range(Quantidade)

max(Quantidade)

min(Quantidade)

amplitude = max(Quantidade)-min(Quantidade)
amplitude

Q1 <- quantile(Quantidade, probs = 0.25)
Q2 <- quantile(Quantidade, probs = 0.50)
Q3 <- quantile(Quantidade, probs = 0.75)
Q4 <- quantile(Quantidade, probs = 1.00)

quartis <- c(Q1,Q2,Q3,Q4)

quartis

Q1

# definir o endereco do conjunto de dados e baixa-lo
url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"
iris <- read.csv(url, header = FALSE)
names(iris) <- c("c_sepala", "l_sepala", "c_petala", "l_petala", 
    "especie")
# remover a string 'Iris-' do inicio de cada tipo de especie
iris$especie <- as.factor(gsub("Iris-", "", iris$especie))

head(iris) # exibe as 6 primeiras linhas do conjunto de dados para me dar uma ideia do que estou enfrentando

names(iris) # Exibe as colunas do dataframe iris

# O resumo summary apresenta alguns detalhes muito importantes, incluindo percepções estatísticas
summary(iris)

sd(iris$c_sepala)

var(iris$c_sepala)

range(iris[,1:4])

head(iris[,1:4])

library(repr)
options(repr.plot.width=8, repr.plot.height=8)
hist(iris$c_sepala)

hist(iris[,1])

hist(iris[,2])

hist(iris[,3])

hist(iris[,4])

# O boxplot é usado para exibir o mesmo abaixo:
boxplot(iris$c_sepala,main="Resumo de iris",xlab="Comprimento da Sepala")

boxplot(iris[,1:4])

iris$c_sepala

summary(iris$c_sepala)

# EXPLORANDO A RELAÇÃO ENTRE O SEPAL COMPRIMENTO E A LARGURA USANDO PLOTS DE DISPERSÃO
options(repr.plot.width=10, repr.plot.height=10)
plot(iris$c_sepala, iris$l_sepala)

names(iris)

install.packages("ggplot2")

options(repr.plot.width=10, repr.plot.height=10)
library(ggplot2)
qplot(c_sepala, c_petala, data = iris, color = especie, size=10)

options(repr.plot.width=15, repr.plot.height=15)
pairs(iris[,1:4], pch = 19, cex=1.5)

my_cols <- c("red", "green", "blue") 
options(repr.plot.width=15, repr.plot.height=15)
pairs(iris[,1:4], pch = 1,  cex = 2.5,
      col = my_cols[iris$especie],
      lower.panel=NULL)
