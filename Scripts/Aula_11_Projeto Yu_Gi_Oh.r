#install.packages('tidyverse')
#install.packages('ggExtra')
#install.packages('repr')
#install.packages('treemap')
#install.packages('ggalt')
#install.packages('ggfortify')
#install.packages('RColorBrewer')
#install.packages("viridis")


library(tidyverse)
library(repr)
library(RColorBrewer)
library(viridis)
library(ggExtra)
library(treemap)
library(ggalt)
library(ggfortify)

url = 'https://raw.githubusercontent.com/DeepFluxion/Analise_Dados_Linguagem_R/master/data/ygo.csv'

ygo <- read.csv(url)

ygo <- read.csv(file = 'data/ygo.csv')

names(ygo)<-c('ID','Nome','Ataque','Atributo','Defesa','has_materials',
             'has_name_condition','is_extra_deck','is_fusion','is_link','is_pendulum',
             'is_synchro','is_xyz','link_markers','link_number','materiais','monster_types','name_condition',
             'numero','pendulum_left','pendulum_right','pendulum_text','lancamentos','Tipo','estrelas','texto')

g<- ygo %>% 
    count(Atributo, sort = TRUE)
g

options(repr.plot.width=7, repr.plot.height=7)
ggplot(data = g, aes(x=reorder(Atributo, -n), y=n))+
  geom_bar(stat="identity")+
  theme_minimal()+
  theme(text = element_text(size = 20))+
  ylab('QTD')+
  xlab('Atributo')

g<- ygo %>% 
    count(Tipo, sort = TRUE)
g

options(repr.plot.width=20, repr.plot.height=7)
ggplot(data = g, aes(x=reorder(Tipo, -n), y=n))+
  geom_bar(stat="identity")+
  theme_minimal()+
  theme(text = element_text(size = 20,angle = 90))+
  ylab('QTD')+
  xlab('Tipo')

ygo %>% 
  group_by(Atributo)%>% 
  summarise(mean(Ataque,na.rm = TRUE),
            mean(Defesa,na.rm = TRUE),
            mean(estrelas,na.rm = TRUE))

ygo %>% 
  group_by(Tipo)%>% 
  summarise(mean(Ataque,na.rm = TRUE),
            mean(Defesa,na.rm = TRUE),
            mean(estrelas,na.rm = TRUE))

options(repr.plot.width=10, repr.plot.height=10)
c<- ygo %>% 
  count(Atributo, sort = TRUE)
treemap(c,
        index="Atributo",
        vSize="n",
        type="index")

options(repr.plot.width=10, repr.plot.height=10)
c<- ygo %>% 
  count(Tipo, sort = TRUE)
treemap(c,
        index="Tipo",
        vSize="n",
        type="index")

g<- ygo %>% 
  group_by(Tipo)%>% 
  count(Atributo, sort = TRUE)

options(repr.plot.width=10, repr.plot.height=10)
treemap(g, #Your data frame object
        index=c("Atributo","Tipo"),  #A list of your categorical variables
        vSize = "n",  #This is your quantitative variable
        type="index", #Type sets the organization and color scheme of your treemap
        palette = "Paired",  #Select your color palette from the RColorBrewer presets or make your own.
        title="Divisão po Atributo e Tipo", #Customize your title
        fontsize.title = 20 #Change the font size of the title
        )

options(repr.plot.width=20, repr.plot.height=7)
ggplot(data = g, aes(x=reorder(Tipo, -n), y=n, fill=Atributo))+
  geom_bar(stat="identity")+
  theme_minimal()+
  theme(text = element_text(size = 24,angle = 90),legend.position="bottom")+
  ylab('QTD')+
  xlab('Tipo')

options(repr.plot.width=25, repr.plot.height=7)
ggplot(data = g, aes(x=reorder(Tipo, -n), y=n, fill=Atributo))+
  geom_bar(stat="identity", position=position_dodge())+
  theme_minimal()+
  theme(text = element_text(size = 20,angle = 90),legend.position="bottom")+
  ylab('QTD')+
  xlab('Tipo')

options(repr.plot.width=20, repr.plot.height=5)
ggplot(ygo, aes(x=Ataque)) + 
  geom_histogram(fill="blue", color="black", na.rm=TRUE, bins = 10)+
  theme(text = element_text(size = 20)) 
 

options(repr.plot.width=20, repr.plot.height=5)
ggplot(ygo, aes(x=Ataque)) + 
  geom_density(fill="blue", color="black", alpha=0.5, na.rm = TRUE)+
  theme(text = element_text(size = 20)) 
 

options(repr.plot.width=20, repr.plot.height=5)
ggplot(ygo, aes(x=Defesa)) + 
  geom_histogram(fill="red", color="black", na.rm=TRUE, bins = 10)+
  theme(text = element_text(size = 24)) 
 

options(repr.plot.width=20, repr.plot.height=5)
ggplot(ygo, aes(x=Defesa)) + 
  geom_density(fill="red", color="black", alpha=0.5, na.rm = TRUE)+
  theme(text = element_text(size = 20)) 
 

options(repr.plot.width=20, repr.plot.height=5)
ggplot(ygo, aes(x=estrelas)) + 
  geom_histogram(fill="green", color="black", na.rm=TRUE, bins=12)+
  theme(text = element_text(size = 20)) 
 

options(repr.plot.width=20, repr.plot.height=5)
ggplot(ygo, aes(x=estrelas)) + 
  geom_density(fill="green", color="black", alpha=0.5, na.rm = TRUE)+
  theme(text = element_text(size = 20)) 
 

options(repr.plot.width=8, repr.plot.height=7)
ggplot(ygo, aes(x=Ataque, y=Defesa)) + 
   geom_point(
        color="black",
        fill="blue",
        shape=21,
        alpha=0.8,
        size=6
        )+
  theme(text = element_text(size = 20)) 

options(repr.plot.width=10, repr.plot.height=7)
ggplot(ygo, aes(x=Ataque, y=Defesa, color=estrelas))+
  geom_point(size=6, na.rm = TRUE) +
  theme_gray()+
  #scale_color_viridis(option = "D")+
  theme(text = element_text(size = 20))+
  scale_colour_gradient2(low = "green4",mid = "yellow",high = "red2",midpoint = 6)

 ggplot(ygo, aes(x=Ataque, y=Defesa, z = estrelas))+ 
     geom_density_2d_filled(na.rm = TRUE)+
     geom_density_2d(color='white', na.rm = TRUE)+
     theme(text = element_text(size = 20)) 

 ggplot(ygo, aes(x=Ataque, y=Defesa, z = estrelas))+ 
     geom_density_2d_filled(na.rm = TRUE)+
     geom_density_2d(color='white', na.rm = TRUE)+
     theme(text = element_text(size = 20))+
     geom_point(color='white', alpha=0.05, aes(size=estrelas), na.rm = TRUE)

options(repr.plot.width=20, repr.plot.height=7)
ygo %>%
  ggplot( aes(x=Atributo, y=Ataque, fill=Atributo)) +
    geom_boxplot(na.rm = TRUE) +
    scale_fill_viridis(discrete = TRUE, alpha=0.6, option="D") +
    theme_gray() +
    theme(text = element_text(size = 24))+
    ggtitle("Ataque por Atributos") +
    xlab("")

options(repr.plot.width=20, repr.plot.height=7)
ygo %>%
  ggplot( aes(x=Atributo, y=Ataque, fill=Atributo)) +
    geom_boxplot(na.rm = TRUE) +
    scale_fill_viridis(discrete = TRUE, alpha=0.6, option="D") +
    geom_jitter(color="black", size=5.4, alpha=0.09, na.rm = TRUE) +
    theme_gray() +
    theme(text = element_text(size = 20))+
    ggtitle("Ataque por Atributos") +
    xlab("")

options(repr.plot.width=20, repr.plot.height=7)
ygo %>%
  ggplot( aes(x=Atributo, y=Defesa, fill=Atributo)) +
    geom_boxplot(na.rm = TRUE) +
    scale_fill_viridis(discrete = TRUE, alpha=0.6, option="D") +
    theme_gray() +
    theme(text = element_text(size = 20))+
    ggtitle("Defesa por Atributos") +
    xlab("")

options(repr.plot.width=20, repr.plot.height=7)
ygo %>%
  ggplot( aes(x=Atributo, y=Defesa, fill=Atributo)) +
    geom_boxplot(na.rm = TRUE) +
    scale_fill_viridis(discrete = TRUE, alpha=0.6, option="D") +
    theme_gray() +
    theme(text = element_text(size = 20))+
    geom_jitter(color="black", size=5.4, alpha=0.15, na.rm = TRUE)+
    ggtitle("Defesa por Atributos") +
    xlab("")

options(repr.plot.width=20, repr.plot.height=20)
ggplot(ygo, aes(x=Atributo, y=Ataque, fill=Atributo)) + 
    geom_boxplot(na.rm = TRUE) +
    theme_gray()+
    theme(text = element_text(size = 16))+
    facet_wrap(~Tipo)

options(repr.plot.width=20, repr.plot.height=20)
ggplot(ygo, aes(x=Atributo, y=Ataque, fill=Atributo)) + 
    geom_violin(na.rm = TRUE) +
    theme_gray()+
    theme(text = element_text(size = 16))+
    facet_wrap(~Tipo)

options(repr.plot.width=20, repr.plot.height=20)
ggplot(ygo, aes(x=Atributo, y=Ataque, fill=Atributo)) + 
    geom_violin(na.rm = TRUE) +
    geom_jitter(color="black", size=5.4, alpha=0.35, na.rm = TRUE)+
    theme_gray()+
    theme(text = element_text(size = 16))+
    facet_wrap(~Tipo)

options(repr.plot.width=20, repr.plot.height=20)
ggplot(ygo, aes(x=Atributo, y=Defesa, fill=Atributo)) + 
    geom_boxplot(na.rm = TRUE) +
    theme_gray()+
    theme(text = element_text(size = 16))+
    facet_wrap(~Tipo)

options(repr.plot.width=20, repr.plot.height=20)
ggplot(ygo, aes(x=Atributo, y=Defesa, fill=Atributo)) + 
    geom_violin(na.rm = TRUE) +
    theme_gray()+
    theme(text = element_text(size = 16))+
    facet_wrap(~Tipo)

options(repr.plot.width=20, repr.plot.height=20)
ggplot(ygo, aes(x=Atributo, y=Defesa, fill=Atributo)) + 
    geom_violin(na.rm = TRUE) +
    geom_jitter(color="black", size=5.4, alpha=0.35, na.rm = TRUE)+
    theme_gray()+
    theme(text = element_text(size = 16))+
    facet_wrap(~Tipo)

options(repr.plot.width=20, repr.plot.height=20)
ggplot(ygo, aes(x=Tipo, y=Defesa, fill=Tipo)) + 
    geom_boxplot(na.rm = TRUE) +
    geom_jitter(color="black", size=5.4, alpha=0.05, na.rm = TRUE)+
    theme_gray()+
    theme(text = element_text(size = 16))+
    facet_wrap(~Atributo)

options(repr.plot.width=20, repr.plot.height=20)
ggplot(ygo, aes(x=Atributo, y=Defesa, fill=Atributo)) + 
    geom_boxplot(na.rm = TRUE) +
    theme_gray()+
    theme(text = element_text(size = 16))+
    facet_wrap(~estrelas)

options(repr.plot.width=20, repr.plot.height=20)
ggplot(ygo, aes(x=Atributo, y=Defesa, fill=Atributo)) + 
    geom_violin(na.rm = TRUE) +
    geom_jitter(color="black", size=5.4, alpha=0.05, na.rm = TRUE)+
    theme_gray()+
    theme(text = element_text(size = 16))+
    facet_wrap(~estrelas)

options(repr.plot.width=10, repr.plot.height=10)
g<-ggplot(ygo, aes(Ataque, estrelas)) + 
  geom_count(na.rm = TRUE) + 
  geom_smooth(method="lm", se=TRUE, na.rm = TRUE)+
  theme_bw()+
  theme(text = element_text(size = 16))
ggMarginal(g, type = "histogram", fill="transparent", na.rm=TRUE)


options(repr.plot.width=10, repr.plot.height=10)
g<-ggplot(ygo, aes(Defesa, estrelas)) + 
  geom_count(na.rm = TRUE) + 
  geom_smooth(method="lm", se=TRUE, na.rm = TRUE)+
  theme(text = element_text(size = 16))
ggMarginal(g, type = "histogram", fill="transparent", na.rm=TRUE)


