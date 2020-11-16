library(readxl)
library(dplyr)
library(ggplot2)
bodyfat <- read_excel('data/body_fat.xlsx')

head(bodyfat)

ggplot(bodyfat, aes(x = Peso, y = Body_Fat)) + geom_point()

ajuste <- lm(Body_Fat ~ Peso, data = bodyfat)

summary(ajuste)

str(ajuste, max.level = 1)

bodyfat$predito_modelo1 <- predict(ajuste, newdata = bodyfat)
bodyfat %>% select(Peso, Body_Fat, predito_modelo1) %>% head()

mse <- mean((bodyfat$Body_Fat - bodyfat$predito_modelo1)^2)
mse

erro_usando_media <- mean((bodyfat$Body_Fat - mean(bodyfat$Body_Fat))^2)
erro_usando_media

sqrt(mse)

sqrt(erro_usando_media)

bodyfat$media <- mean(bodyfat$Body_Fat)

ajuste2 <- lm(Body_Fat ~ Peso + Altura + Torax + Abdomen + Pescoço + Joelho, 
              data = bodyfat)

bodyfat$predito_modelo2 <- predict(ajuste2, newdata = bodyfat)
mse <- mean((bodyfat$Body_Fat - bodyfat$predito_modelo2)^2)
sqrt(mse)

summary(ajuste2)

ggplot(bodyfat) + 
geom_point( aes(x = Peso, y = Body_Fat))+
geom_line( aes(x = Peso, y = media))

ggplot(bodyfat) + 
geom_point( aes(x = Peso, y = Body_Fat))+
geom_point( aes(x = Peso, y = predito_modelo1, color = 'red'))

ggplot(bodyfat) + 
geom_point( aes(x = Peso, y = Body_Fat))+
geom_point( aes(x = Peso, y = predito_modelo2), color = 'blue')

ggplot(bodyfat) + 
geom_point( aes(x = Peso, y = Body_Fat))+
geom_point( aes(x = Peso, y = predito_modelo1), color = 'red')+
geom_point( aes(x = Peso, y = predito_modelo2), color = 'blue')

ggplot(bodyfat) + 
geom_point( aes(x = Peso, y = Body_Fat))+
geom_point( aes(x = Peso, y = predito_modelo1), color = 'red')+
geom_smooth( aes(x = Peso, y = predito_modelo2), color = 'blue')

bodyfat$dif1 = bodyfat$Body_Fat-bodyfat$predito_modelo1
bodyfat$dif2 = bodyfat$Body_Fat-bodyfat$predito_modelo2

ggplot(bodyfat) + 
geom_smooth( aes(x = Body_Fat, y = dif1 ),color = 'blue')+
geom_smooth( aes(x = Body_Fat, y = dif2 ),color = 'red')

library(readr)
titanic <- read_csv('data/titanic_train.csv')

titanic$Survived <- as.factor(titanic$Survived)

head(titanic)

install.packages('rpart')
install.packages('rpart.plot')

library(rpart)
arvore <- rpart(Survived ~ Sex + Age + Pclass, data = titanic)

summary(arvore)

library(rpart.plot)
rpart.plot(arvore)

probabilidades <- predict(arvore, newdata = titanic, type = 'prob')

head(probabilidades)

classes <- predict(arvore, newdata = titanic, type = 'class')

head(classes)


