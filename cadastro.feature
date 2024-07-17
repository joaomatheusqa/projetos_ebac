            #language: pt

            Funcionalidade: Concluir cadastro
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de cadastro da EBAC-SHOP

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <nome>
            E o <sobrenome>
            E O <pais>
            E o <endereco>
            E a <cidade>
            E o <cep>
            E o <telefone>
            E o <email>
            E clicar em em Finalizar compra
            Então deve exibir a <mensagem> de retorno

            Exemplos:
            | nome   | sobrenome | pais     | endereco              | cidade     | cep        | telefone      | email                      | mensagem                                 |
            | "João" | "Matheus" | "Brasil" | "Rua da alegria, 123" | "Curitiba" | "80010100" | "41997999999" | "emailvalido@ebac.com.br"  | "Pedido realizado com sucesso!!"         |
            | "123"  | "Matheus" | "Brasil" | "Rua da alegria, 123" | "Curitiba" | "80010100" | "41997999999" | "emailvalido@ebac.com.br"  | "Insira um nome e sobrenome válido!"     |
            | "João" | "123"     | "Brasil" | "Rua da alegria, 123" | "Curitiba" | "80010100" | "41997999999" | "emailvalido@ebac.com.br"  | "Insira um nome e sobrenome válido!"     |
            |        | "Matheus" | "Brasil" | "Rua da alegria, 123" | "Curitiba" | "80010100" | "41997999999" | "emailvalido@ebac.com.br"  | "Preencha todos os campos obrigatórios!" |
            | "João" |           | "Brasil" | "Rua da alegria, 123" | "Curitiba" | "80010100" | "41997999999" | "emailvalido@ebac.com.br"  | "Preencha todos os campos obrigatórios!" |
            | "João" | "Matheus" |          | "Rua da alegria, 123" | "Curitiba" | "80010100" | "41997999999" | "emailvalido@ebac.com.br"  | "Preencha todos os campos obrigatórios!" |
            | "João" | "Matheus" | "Brasil" |                       | "Curitiba" | "80010100" | "41997999999" | "emailvalido@ebac.com.br"  | "Preencha todos os campos obrigatórios!" |
            | "João" | "Matheus" | "Brasil" | "Rua da alegria, 123" |            | "80010100" | "41997999999" | "emailvalido@ebac.com.br"  | "Preencha todos os campos obrigatórios!" |
            | "João" | "Matheus" | "Brasil" | "Rua da alegria, 123" | "123"      | "80010100" | "41997999999" | "emailvalido@ebac.com.br"  | "Insira uma cidade válida"               |
            | "João" | "Matheus" | "Brasil" | "Rua da alegria, 123" | "Curitiba" | "12"       | "41997999999" | "emailvalido@ebac.com.br"  | "Insira um CEP válido"                   |
            | "João" | "Matheus" | "Brasil" | "Rua da alegria, 123" | "Curitiba" |            | "41997999999" | "emailvalido@ebac.com.br"  | "Preencha todos os campos obrigatórios!" |
            | "João" | "Matheus" | "Brasil" | "Rua da alegria, 123" | "Curitiba" | "80010100" | "5599"        | "emailvalido@ebac.com.br"  | "Insira um número de telefone válido"    |
            | "João" | "Matheus" | "Brasil" | "Rua da alegria, 123" | "Curitiba" | "80010100" |               | "emailvalido@ebac.com.br"  | "Preencha todos os campos obrigatórios!" |
            | "João" | "Matheus" | "Brasil" | "Rua da alegria, 123" | "Curitiba" | "80010100" | "41997999999" | "emailvalido@ebac.com.br@" | "Insira um número de telefone válido"    |
            | "João" | "Matheus" | "Brasil" | "Rua da alegria, 123" | "Curitiba" | "80010100" | "41997999999" |                            | "Preencha todos os campos obrigatórios!" |
