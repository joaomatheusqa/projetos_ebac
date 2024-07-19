            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a tela do carrinho

            Cenário: Limpar carrinho com o carrinho já vazio
            Quando eu limpar o carrinho vazio
            Então deve exibir a "Carrinho vazio!"

            Cenário: Limpar carrinho contendo produtos
            Quando um erro ocorrer ao tentar limpar o carrinho
            Então deve exibir a "Um erro ocorreu durante o processo, tente novamente!"

            Contexto:
            Dado que eu acesse a tela de um produto

            Esquema do Cenário: Definir cor, tamanho e quantidade menor que 10
            Quando eu preencher as informações <cor>, <tamanho> e <quantidade>
            Então deve exibir a <mensagem> de retorno

            Exemplos:
            | cor  | tamanho | quantidade | mensagem                                                  |
            | Azul | P       | 1          | "Produto adicionado ao carrinho!"                         |
            | Azul | P       | 15         | "Só é permitido incluir 10 produtos por vez no carrinho!" |

            Cenário: Não definir um dos campos obrigatórios
            Quando eu tentar inserir no carrinho
            Então deve exibir a mensagem "Preencha todos os campos obrigatório"
