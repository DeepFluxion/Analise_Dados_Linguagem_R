install.packages("magrittr")
library(magrittr)

x <- c(1, 2, 3, 4)
sqrt(sum(x))

x %>% sum() %>% sqrt()

head(airquality)

airquality %>%
  na.omit %>% 
  lm(Ozone ~ Wind + Temp + Solar.R, data = .) %>% 
  summary

install.packages("dplyr")
install.packages("tidyr")

library(dplyr)
library(tidyr)

install.packages("tibble")
library(tibble)

install.packages("readr")

library(readr)

imdb <- readr::read_rds("imdb.rds")

head(imdb)

head(imdb)

imdb %>% 
  filter(nota_imdb > 9)

imdb %>% 
  filter(ano > 2010 & nota_imdb > 8.5)

imdb %>% 
  filter(receita > orcamento | nota_imdb > 9)

letters

letters %in% c("a", "e", "z")

imdb %>% 
  filter(diretor %in% c("Steven Spielberg", "Quentin Tarantino")) %>%
  head()
Também podemos usar funções que retornam valores lógicos, como a str_detect(), do pacote stringr. Esse pacote possui funções para a manipulação de strings, e será abordado com mais detalhes nesta seção.
library(stringr)

imdb %>% 
  filter(str_detect(generos, "Action"))

names(imdb)

imdb %>% 
  select(titulo, ano, orcamento) %>%
  head()

imdb %>% 
  select(starts_with("ator")) %>%
  head()

imdb %>% 
  select(titulo, ator_1:ator_3) %>%
  head()

imdb %>% 
  select(-ano, - diretor) %>%
  head()

imdb %>% 
  select(-starts_with("ator")) %>%
  head()

imdb %>% 
  arrange(orcamento) %>% 
  select(orcamento, everything()) %>%
  head()

imdb %>% 
  arrange(desc(orcamento)) %>% 
  select(orcamento, everything()) %>%
  head()

imdb %>% 
  arrange(desc(ano), titulo) %>% 
  select(titulo, ano, everything()) %>%
  head()

imdb %>% 
  mutate(duracao = duracao/60) %>% 
  select(duracao) %>%
  head()

imdb %>% 
  mutate(duracao_horas = duracao/60) %>% 
  select(duracao, duracao_horas) %>%
  head()

imdb %>% 
  mutate(
    lucro = receita - orcamento,
    resultado = ifelse(lucro < 0, "prejuizo", "lucro")
  ) %>% 
  select(lucro, resultado) %>%
  head()

imdb %>% 
  summarise(media_orcamento = mean(orcamento, na.rm = TRUE))

imdb %>% 
  summarise(
    media_orcamento = mean(orcamento, na.rm = TRUE),
    mediana_orcamento = median(orcamento, na.rm = TRUE),
    qtd = n(),
    qtd_diretores = n_distinct(diretor)
  )

imdb %>% 
  group_by(ano) %>% 
  summarise(qtd_filmes = n()) %>%
  head()

imdb_gather <- imdb %>% 
  mutate(id = 1:n()) %>% 
  gather(
    key = "importancia_ator", 
    value = "nome_ator", 
    ator_1, ator_2, ator_3
  ) %>% 
  select(nome_ator, importancia_ator, everything())

head(imdb_gather)

imdb_spread <- imdb_gather %>% 
  spread(
    key = importancia_ator,
    value = nome_ator
  )

head(imdb_spread)

imdb %>% 
  unite(
    col = "titulo_diretor",
    titulo, diretor,
    sep = " - "
  ) %>%
  head()

imdb %>% 
  separate(
    col = generos, 
    into = c("genero_1", "genero_2", "genero_3"), 
    sep = "\\|", 
    extra = "drop"
  ) %>%
  head()
