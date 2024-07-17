            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a tela do carrinho

            Cenário: Limpar carrinho com o carrinho já vazio
            Quando eu limpar o carrinho
            E o carrinho estiver vazio
            Então deve exibir a "Carrinho vazio!"

            Cenário: Limpar carrinho contendo produtos
            Quando eu limpar o carrinho
            E o carrinho possuir produtos
            Então deve exibir a "Carrinho limpo com sucesso!"

            Cenário: Limpar carrinho contendo produtos
            Quando eu limpar o carrinho
            E o carrinho possuir produtos
            E um erro ocorrer
            Então deve exibir a "Um erro ocorreu durante o processo, tente novamente!"

            Contexto:
            Dado que eu acesse a tela de um produto

            Esquema do Cenário: Definir cor, tamanho e quantidade menor que 10
            Quando eu escolher a <cor>
            E escolher o <tamanho>
            E escolher a <quantidade>
            Então deve exibir a <mensagem> de retorno

            Exemplos:
            | cor  | tamanho | quantidade | mensagem                                                  |
            | Azul | P       | 1          | "Produto adicionado ao carrinho!"                         |
            |      | P       | 1          | "Por favor escolha uma cor! "                             |
            | Azul |         | 1          | "Por favor escolha um tamanho!"                           |
            | Azul | P       |            | "Por favor escolha uma quantidade!"                       |
            | Azul | P       | 15         | "Só é permitido incluir 10 produtos por vez no carrinho!" |