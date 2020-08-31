pi

sin(pi/2) + 2*3

(sin(pi/2) + 2)*3

"a"

"1"

"positivo"

"Error: objeto x não encontrado"

1

0.10

0.95

pi

1L

5L

10L

TRUE

FALSE

x <- 1
class(x)

y <- "a"
class(y)

z <- TRUE
class(z)

1 + 1

10-8

2*10

18/3

2^4

2**4

9%%2

9%/%2

1 < 1

1 <= 1

1 == 0.999

1 == 0.99999999999999999

13.5 != 13.5

!TRUE

TRUE & FALSE

TRUE & TRUE

xor(TRUE, TRUE)

xor(TRUE, FALSE)

TRUE == 1

TRUE == 2

FALSE == 0

vetor1 <- c(1, 2, 3, 4)
vetor2 <- c("a", "b", "c")

vetor1

vetor2

class(vetor1)

class(vetor2)

vetor1-1

vetor1

vetor1 / 2

vetor1 * 10

vetor1 * vetor1

y <- c(1.7, "a")  # character
class(y)

y <- c(TRUE, 2)   # numeric
class(y)

y <- c(TRUE, 'a')   # numeric
class(y)

m <- matrix(1:6, nrow = 2, ncol = 3)

m

# Observe o que o 1:6 faz
1:6

m = matrix(1:6, nrow = 3, ncol = 2)
m

x <- list(1:5, "Z", TRUE, c("a", "b"))
x

pedido <- list(pedido_id = 8001406,
               pedido_registro = as.Date("2017-05-25"),
               nome = "Athos", 
               sobrenome = "Petri Damiani", 
               cpf = "12345678900", 
               email = "athos.damiani@gmail.com", 
               qualidades = c("incrível", "impressionante"),
               itens = list(
                 list(descricao = "Ferrari", 
                      frete = 0, 
                      valor = 500000),
                 list(descricao = "Dolly", 
                      frete = 1.5, 
                      valor = 3.90)
               ), 
               endereco = list(entrega = list(logradouro = "Rua da Glória", 
                                              numero = "123",
                                              complemento = "apto 71"),
                               cobranca = list(logradouro = "Rua Jose de Oliveira Coutinho",
                                               numero = "151",
                                               complemento = "5o andar")
               )
)

pedido$cpf     # elemento chamado 'cpf'

pedido[1]      # nova lista com apenas o primeiro elemento

pedido[[2]]    # segundo elemento

pedido["nome"] # nova lista com apenas o elemento chamado 'nome'

minha_lista <- list(x = c(1, 2, 3), y = c("a", "b"))
as.data.frame(minha_lista)

minha_lista <- list(x = c(1, 2, 3), y = c("a", "b",'c'))
as.data.frame(minha_lista)


