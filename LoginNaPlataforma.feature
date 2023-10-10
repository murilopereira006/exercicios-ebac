Feature: Login na plataforma
    Como cliente da EBAC-SHOP, quero fazer o login (autenticação) na plataforma para visualizar meus pedidos

    Scenario Outline: Múltiplos cenários
        Given que eu acesse a página de login da EBAC-SHOP
        When  eu digitar o <user>
        And a <password>
        Then Deve exibir a <mensagem>

            | user                | password  | message                      |
            | "ebac@ebac.com.br"  | "123@abc" | "Checkout"                   |
            | "error@ebac.com.br" | "123@abc" | "Usuário ou senha inválidos" |
            | "ebac@ebac.com.br"  | "123"     | "Usuário ou senha inválidos" |