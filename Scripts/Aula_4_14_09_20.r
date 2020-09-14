c(10,11,12,13,14,15,16,17,18,19,20,21) # create a vector manually

10:21

seq(from=10, to=21, by=1)              

seq(from=10, to=21, by=3)              

seq(from=10, to=21, by=10)              

seq(from=10, to=21, len=12)

seq(from=10, to=21, len=3)

seq(from=10, to=21, len=2)

x <- 10:21
x

x+2                                    # somar 2 a cada um dos elementos de x

x*2                                    # multiplicando cada um dos elementos de `x`
x

x^2                                    #elevando ao quadrado cada elemento de `x` 
x

sqrt(x)                                # raiz quadrada de cada elemento de `x`
x

log(x)                                 # log cada elemento de `x` 
x

x <- c(0.5, 0.6)                       # numeric
x

x <- c(TRUE, FALSE)                    # logical
x

x <- c(T, F)                           # logical
x

x <- c("a", "b", "c")                  # character
x

x <- 9:29                              # integer
x

x <- vector("numeric", length = 10)    # usando a função `vector()` para incializar vetores.
x

y1 <- c(1.7, "a")                       # character
y2 <- c(TRUE, 2)                        # numeric
y3 <- c("a", TRUE)                      # character

typeof(y1)                              # função para checar qualquer vetor ou variável

typeof(y2)                              # função para checar qualquer vetor ou variável

typeof(y3)                              # função para checar qualquer vetor ou variável

class(y1)                               # função para checar qualquer vetor ou variável

class(y2)                               # função para checar qualquer vetor ou variável

class(y3)                               # função para checar qualquer vetor ou variável

x <- c("a", "b", "c","1")
x

as.numeric(x)
x

as.logical(x)                          
x

as.character(x)
x

as.character(1:10)

x

x[1] # acessa o primeiro elemneto do vetor x

x[2] # acessa o segundo elemneto do vetor x

x[3] # acessa o terceiro elemneto do vetor x

x[4]# acessa o quarto elemneto do vetor x

x<-1:21

length(x) # retorna a quantidade de elementos (comprimento)

sum(x) # retorna a soma dos elementos

max(x) # retorna o máximo dos elementos

min(x) # retorna o mínimo dos elementos

mean(x) # retorna a média dos elementos

median(x) # retorna a mediana dos elementos

summary(x) # retorna um sumário dos elementos

ShampooMarca <- 'Lavebem'
ShampooPreco <- 20.0
ShampooQtde <- 2.0
ShampooTotal <- ShampooPreco*ShampooQtde

Shampoo <- c(ShampooMarca,ShampooPreco,ShampooQtde,ShampooTotal)
Shampoo

Shampoo[1]

Shampoo[2]

Shampoo[3]

Shampoo[4]

id     <- c("N198","N805","N333","N117","N195","N298")
genero <- c(1, 0, 1, 1, 0, 1)  # 0 significa masculino, 1 significa feminino
idade    <- c(30, 60, 26, 75, 19, 60)
sangue  <- c(0.4, 0.2, 0.6, 0.2, 0.8, 0.1)

health_data <- cbind(id, genero, idade, sangue)
health_data

health_data_rbind <-rbind (id, genero, idade, sangue)
health_data_rbind

items <- c(1,2,3,4,5,6)
ItemNome <-c('Shampoo','Sabonete','Pasta','Escova','Fio Dental','Água')
ItemPreco <-c(20.5,5.5,3.52,7.34,5.23,5.02)
ItemQtde <- c(2,3,4,1,1,3)
ItemTotal <- ItemPreco*ItemQtde

ItemNome

ItemPreco

ItemQtde

ItemTotal

Compra <-cbind(ItemNome,ItemPreco,ItemQtde,ItemTotal)

Compra

Compra_rbind <-rbind(ItemNome,ItemPreco,ItemQtde,ItemTotal)

Compra_rbind

m <- matrix(nrow = 2, ncol = 3)        # cria uma `NA` matriz bde 2x3

m                                      # print m

dim(m)                                 # check dimensiões 

attributes(m)                          # check dimension 

m <- 1:10                              # cria um vetor `m`
m

dim(m) <- c(5, 2)                      # transforma vctor `m` em uma matriz de 2x5

m

x <- 1:3                               # cria um vetor `x`
y <- 10:12                             # cria um vector `y`

cbind(x, y)                            # combina vetor `x` e `y` por colunas

rbind(x, y)                            # combina vetor `x` e `y` por linha

x <- list(1:5, c("a", "b", "c"), TRUE, 7,5) # cria uma lista do vetor `x`
x

x[1] # colchetes simples

x[[1]] # colchetes duplos

typeof(x[2]) # verifique o tipo do objeto usando []

typeof(x[[4]]) # verifique o tipo do objeto usando [[]]
x[[4]]

x[c(2,3,4)] # lista do primeiro e segundo vetores

x <- vector("list", length = 3) # cria uma lista vazia de um comprimento pré-especificado
x

x[1]<- 10  # atribui o valor 10 ao primeiro elemnto da lista
x

x[2]<- 'segundo'  # atribui o valor 'segundo' ao segundo elemnto da lista
x

x[3]<- TRUE   # atribui o valor TRUE ao terceiro elemento da lista
x

nome <- c ("a", "b", "c", "d") # cria um objeto como uma variável `nome`

idade <- c (18, 19, 20, 21) # cria um objeto como uma variável `idade`


gênero <- c (1, 0, 0, 1) # cria um objeto como uma variável `gênero`


x [[1]] <- nome # adiciona / substitui objeto à lista `x`


x [[2]] <- idade # adiciona / substitui objeto à lista `x`


x [[3]] <- genero # adiciona / substitui objeto à lista `x`


x # imprimir o resultado final

x <- factor(c("yes","no","yes","no"))  # cria objetos factor
x

table(x)                               # tabela of `x`

unclass(x)-1                             # veja a representação subjacente do fat

attr(x,"levels")                       # veja a representação subjacente do fator

# Criação do primeiro data frame.
df1 <- data.frame(id = c (1:5), 
                name = c("Julian","Vanessa","Jeffry","Angel","Nikki"),
              salary = c(623.3,515.2,611.0,729.0,843.25), 
          start_date = as.Date(c("2022-01-01", "2022-09-23", "2022-11-15",
                                 "2022-05-11", "2022-03-27")),
                dept = c("DS","DS","BA","DA","DS"), stringsAsFactors = F)
df1

# Criação do segundo data frame.
df2 <-data.frame(id = c (6:10), 
               name = c("Ardifo","Irene","Kefas","Sherly","Bakti"),
             salary = c(578.0,722.5,632.8,632.8,NA), 
         start_date = as.Date(c("2022-05-21","2022-07-30","2022-06-17",
                                "2022-07-30","2018-09-03")),
               dept = c("Actuaries","Actuaries","CA","DE","Lecturer"),stringsAsFactors = F)
df2

df3 <- rbind(df1,df2)                  # Combinando os dois data frames
df3

head(df3)                              # print as prieiras seis linhas

head(df3,4)                               # print as prieiras quatro linhas

class(df3)                             # o typo do data frame

str(df3)                               # Estrutura do data frame

dim(df3)                               # Dimensões do data frame

mtcars

mtcars [1,5] # extrai o elemento da 1ª linha e 5ª coluna.

mtcars [1: 5,] # extrai as primeiras seis linhas de mtcars


mtcars [, 1: 2] # extrai as primeiras duas colunas de mtcars


mtcars [, 'mpg'] # extrair coluna específica


mtcars$hp # extract Coluna específica


mtcars ['Mazda RX4',] # extrair linha específica

subset(mtcars, select = mpg) # extract / subset Coluna específica


subset(mtcars, select = 1) # extract / subset Coluna específica


subset(mtcars, select = c(1,2,3)) # extrair / subconjunto da primeira e segunda coluna


subset(mtcars, select = c(1: 5)) # extract / subset Colunas específicas

min(mtcars$mpg) # encontre o mínimo de milhas/galão (US)


max(mtcars$mpg) # encontre o máximo de milhas / galão (EUA)


mean(mtcars$mpg, na.rm = TRUE) # encontre a média de milhas / galão (EUA)


var(mtcars$mpg, na.rm = TRUE) # encontre a variancia de milhas / galão (EUA)


summary(mtcars$mpg, na.rm = TRUE) # encontre o desvio padrão Milhas / galão (EUA)

mtcars$newvar1 <- mtcars$mpg - mtcars$qsec


mtcars$newvar2 <- mtcars$newvar1 > 0


mtcars$newvar3 <- ifelse(mtcars$newvar2, "good", "bad")


mtcars$newvar4 <- factor(mtcars$newvar1>10 & mtcars$newvar3=="good",
                         labels = c("level1","level2"))

mtcars

library(readr)

imdb_csv <- read_csv(file = "https://raw.githubusercontent.com/curso-r/site-v2/master/content/material/importacao/data/imdb.csv")
imdb_txt <- read_delim(file = "https://raw.githubusercontent.com/curso-r/site-v2/master/content/material/importacao/data/imdb.txt", delim = " ")

dim(imdb_csv)

imdb_txt

write_csv(x = mtcars, path = "data\\mtcars.csv")
write_delim(x = mtcars, delim = " ", path = "data\\mtcars.txt")

imdb_rds <- read_rds(path = "imdb.rds")
write_rds(mtcars, path = "mtcars.rds")

df <- readxl::read_xls(path = "imdb.xls")
plot(df$receita)

readxl::read_xlsx(path = "imdb.xlsx")

readxl::read_excel(path = "imdb.xls")

readxl::read_excel(path = "imdb.xlsx")


