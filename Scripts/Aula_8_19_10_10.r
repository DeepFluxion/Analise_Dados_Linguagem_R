# Para instalar
install.packages("tidyverse")

library(tidyverse)

head(mpg)

# a bibliotec rep permite ajustes no tamanhp do gráfcio
library(repr)
# usando options você pode ajustar a altura e largura do gráfico
options(repr.plot.width=10, repr.plot.height=8)
theme_set(theme_gray(base_size = 20))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), size=2.5)

ggplot(data = mpg)

mpg

help(mpg)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = hwy, y = cyl))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = class, y = hwy))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class, size=20))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))
#> Warning: Using size for a discrete variable is not advised.
#> Aviso: Usar o tamanho (size) para uma variável discreta não é recomendado.

# Supperior
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class, size=20))



# Inferior
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class, size=20))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

mpg

names(mpg)

sapply(mpg, class)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(drv ~ cyl)

# superior
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

# inferior
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = drv), size=2.5) +
  geom_smooth(mapping = aes(x = displ, y = hwy, color = drv, linetype = drv))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))
              
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))
    
ggplot(data = mpg) +
  geom_smooth(
    mapping = aes(x = displ, y = hwy, color = drv),
    show.legend = FALSE
  )

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y = hwy))+
  geom_smooth(
    mapping = aes(x = displ, y = hwy, color = drv),
    show.legend = FALSE
  )

diamonds

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = carat))

ggplot(data = diamonds) + 
  geom_boxplot(mapping = aes(x = cut, y=price))

ggplot(data = diamonds) + 
  geom_boxplot(mapping = aes(x = cut, y=price))

ggplot(diamonds, aes(x=carat, y=price)) + geom_point()

ggplot(diamonds, aes(x=carat, y=price, color=clarity)) + geom_point(size=1.5)

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point(size=1.5)

ggplot(diamonds, aes(x=carat, y=price)) + geom_point() + geom_smooth()

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, colour = cut))
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = cut))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity))

ggplot(data = diamonds, mapping = aes(x = cut, fill = clarity)) + 
  geom_bar(alpha = 1/5, position = "identity")
ggplot(data = diamonds, mapping = aes(x = cut, colour = clarity)) + 
  geom_bar(fill = NA, position = "identity")

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "fill")

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "dodge")

ggplot(data = mpg, mapping = aes(x = class, y = hwy)) + 
  geom_boxplot()
ggplot(data = mpg, mapping = aes(x = class, y = hwy)) + 
  geom_boxplot() +
  coord_flip()

install.packages('maps')

library("maps")
nz <- map_data("nz")

ggplot(nz, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black")

ggplot(nz, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black") +
  coord_quickmap()

help(map_data)

wd <- map_data("world")

ggplot(wd, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black")

ggplot(wd, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black") +
  coord_quickmap()

bar <- ggplot(data = diamonds) + 
  geom_bar(
    mapping = aes(x = cut, fill = cut), 
    show.legend = FALSE,
    width = 1
  ) + 
  theme(aspect.ratio = 1) +
  labs(x = NULL, y = NULL)

bar + coord_flip()
bar + coord_polar()
