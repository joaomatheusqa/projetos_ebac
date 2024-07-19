# language: pt

Funcionalidade: Concluir cadastro
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

Contexto:
  Dado que eu acesse a página de cadastro da EBAC-SHOP

Esquema do Cenário: Autenticar múltiplos usuários
  Quando eu preencher os seguintes dados para finalizar uma compra:
    | nome     | sobrenome | país     | endereço              | cidade     | cep        | telefone      | email                      |
    | <nome>   | <sobrenome>| <pais>   | <endereco>           | <cidade>   | <cep>      | <telefone>    | <email>                    |
  Então deve exibir a mensagem <mensagem> de retorno

Exemplos:
  | nome     | sobrenome | país     | endereço              | cidade     | cep        | telefone      | email                       | mensagem                                |
  | "João"   | "Matheus" | "Brasil" | "Rua da alegria, 123" | "Curitiba" | "80010100" | "41997999999" | "emailvalido@ebac.com.br"   | "Pedido realizado com sucesso!!"        |
  | "123"    | "Matheus" | "Brasil" | "Rua da alegria, 123" | "Curitiba" | "80010100" | "41997999999" | "emailvalido@ebac.com.br"   | "Insira um nome e sobrenome válido!"    |
  | "João"   | "123"     | "Brasil" | "Rua da alegria, 123" | "Curitiba" | "80010100" | "41997999999" | "emailvalido@ebac.com.br"   | "Insira um nome e sobrenome válido!"    |
  | "João"   | "Matheus" | "Brasil" | "Rua da alegria, 123" | "123"      | "80010100" | "41997999999" | "emailvalido@ebac.com.br"   | "Insira uma cidade válida"              |
  | "João"   | "Matheus" | "Brasil" | "Rua da alegria, 123" | "Curitiba" | "12"       | "41997999999" | "emailvalido@ebac.com.br"   | "Insira um CEP válido"                  |
  | "João"   | "Matheus" | "Brasil" | "Rua da alegria, 123" | "Curitiba" | "80010100" | "5599"        | "emailvalido@ebac.com.br"   | "Insira um número de telefone válido"   |

  Cenário: Tentar concluir cadastro sem preencher todos os campos
  Quando eu não preencher algum dos campos obrigatórios
  Então deve exibir a mensagem "Preencha todos os campos obrigatórios"
