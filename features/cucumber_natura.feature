#language: pt

Funcionalidade: Criar uma conta no site da Natura
Eu como cliente da Natura, gostaria de criar um cadastro.

Cenario: Cadastro de cliente Natura

Dado que eu esteja no site da Natura para criar um cadastro
Quando preencho todos os campos do formulario e clico no botão continuar
| e-mail         | willssan0578@gmail.com|
| cep            | 06700-000             |
| nome           | Wilson                |
| senha          | Teste@1234            |
E concordo com os termos de uso
Então então vou para tela logado