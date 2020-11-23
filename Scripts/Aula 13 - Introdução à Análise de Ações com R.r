rm(list=ls())
install.packages("quantmod")
install.packages('Rcpp', dependencies = TRUE)
install.packages('ggplot2', dependencies = TRUE)
install.packages("vctrs", dependencies = TRUE)

library(quantmod)
library(ggplot2)

pbr <- getSymbols("PBR", src = "yahoo", from = "2013-01-01", to = "2020-06-01", auto.assign = FALSE)

head(pbr)

tail(pbr)

summary(pbr)

str(pbr)

library(repr)
options(repr.plot.width = 20, repr.plot.height = 10)
ggplot(pbr, aes(x = index(pbr), y = pbr[,6])) + geom_line(color = "darkblue", size=2) +
ggtitle("Série de preços da Petrobras") +
xlab("Data") + ylab("Preço ($)") + 
theme(plot.title = element_text(hjust = 0.5, size=20)) +
theme(text = element_text(size = 20))+ 
scale_x_date(date_labels = "%b %y", date_breaks = "6 months")

pbr_mm <- subset(pbr, index(pbr) >= "2016-01-01")

pbr_mm10 <- rollmean(pbr_mm[,6], 10, fill = list(NA, NULL, NA), align = "right")
pbr_mm30 <- rollmean(pbr_mm[,6], 30, fill = list(NA, NULL, NA), align = "right")

pbr_mm$mm10 <- coredata(pbr_mm10)
pbr_mm$mm30 <- coredata(pbr_mm30)

ggplot(pbr_mm, aes(x = index(pbr_mm))) + geom_line(aes(y = pbr_mm[,6], color = "PBR"), size=1) + 
ggtitle("Série de preços da Petrobras") +
geom_line(aes(y = pbr_mm$mm10, color = "MM10"), size=1) +
geom_line(aes(y = pbr_mm$mm30, color = "MM30"), size=1) +
xlab("Data") + ylab("Preço ($)") +
theme(plot.title = element_text(hjust = 0.5), panel.border = element_blank()) +
theme(text = element_text(size = 24))+ 
scale_x_date(date_labels = "%b %y", date_breaks = "3 months") +
scale_colour_manual("Séries", values=c("PBR"="gray40", "MM10"="firebrick4", "MM30"="darkcyan"))

pbr_ret <- diff(log(pbr[,6]))
pbr_ret <- pbr_ret[-1,]

head(Op(pbr))

head(Cl(pbr))

head(Ad(pbr))

summary(pbr_ret)

sd(pbr_ret)

mean(pbr_ret)

ggplot(pbr_ret, aes(x = index(pbr_ret), y = pbr_ret)) + geom_line(color = "deepskyblue4",  size=1) +
ggtitle("Série de retornos da Petrobras") + xlab("Data") + ylab("Retorno") +
theme(plot.title = element_text(hjust = 0.5)) +
theme(text = element_text(size = 20))+ 
scale_x_date(date_labels = "%b %y", date_breaks = "6 months")

pbr_ret20 <- subset(pbr_ret, index(pbr_ret) > "2020-01-01")

ggplot(pbr_ret20, aes(x = index(pbr_ret20), y = pbr_ret20)) + geom_line(color = "deepskyblue4",  size=2) +
ggtitle("Série de retornos da Petrobras em 2020") + xlab("Data") + ylab("Retorno") +
theme(plot.title = element_text(hjust = 0.5)) +
theme(text = element_text(size = 20))+ 
scale_x_date(date_labels = "%b %y", date_breaks = "1 months")

pbr_ret19 <- subset(pbr_ret, (index(pbr_ret) > "2019-01-01")&(index(pbr_ret) < "2019-12-31"))

ggplot(pbr_ret19, aes(x = index(pbr_ret19), y = pbr_ret19)) + 
geom_line(color = "deepskyblue4", size=2) +
ggtitle("Série de retornos da Petrobras em 2019") + xlab("Data") + ylab("Retorno") +
theme(plot.title = element_text(hjust = 0.5)) +
theme(text = element_text(size = 20))+ 
scale_x_date(date_labels = "%b %y", date_breaks = "1 months")

summary(pbr_ret20)

mean(pbr_ret20)

sd(pbr_ret20)

summary(pbr_ret19)

mean(pbr_ret19)

sd(pbr_ret19)


