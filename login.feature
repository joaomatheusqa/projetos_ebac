            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero acessar a plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login da EBAC-SHOP

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de retorno e <redirecionar>

            Exemplos:
            | usuario                      | senha              | mensagem                       | redirecionar |
            | "usuariovalido@ebac.com.br"  | "senhavalida123"   | "Bem vindo!"                   | [true]       |
            | "usuariinvalido@ebac.com.br" | "senhavalida123"   | "Usuário inexistente"          | [false]      |
            | "usuariovalido@ebac.com.br"  | "senhainvalida123" | "Usuário ou senha inválidos"   | [false]      |
            |                              | "senhainvalida123" | "Por favor insira um usuário!" | [false]      |