Feature: Tela de cadastro - Checkout
    Como cliente da EBAC-SHOP, quero concluir meu cadastro para finalizar minha compra

    Scenario Outline: Múltiplos cenários
        Given que eu acesse a página de checkout da EBAC-SHOP
        When  eu digitar o <name>
        And add <lastName>
        And add <country>
        And add <adress>
        And add <city>
        And add <CEP>
        And add <phone>
        And add <email>
        Then Deve exibir a <message>

            | email              | name   | lastName  | country  | adress        | city             | CEP         | phone          | message                                                |
            | "ebac@ebac.com.br" | "José" | "Ernesto" | "Brasil" | "Av. Joseiro" | "Belo Horizonte" | "06780-001" | "11 999994444" | "compra realizada com sucesso"                         |
            | "error@ebac.error" | "José" | "Ernesto" | "Brasil" | "Av. Joseiro" | "Belo Horizonte" | "06780-001" | "11 999994444" | "O campo de email não pode ter formato inválido"       |
            | "ebac@ebac.com.br" | ""     | "Ernesto" | "Brasil" | "Av. Joseiro" | "Belo Horizonte" | "06780-001" | "11 999994444" | "Os campos com * obrigatoriamente devem ser preencido" |
            | "ebac@ebac.com.br" | "José" | ""        | "Brasil" | "Av. Joseiro" | "Belo Horizonte" | "06780-001" | "11 999994444" | "Os campos com * obrigatoriamente devem ser preencido" |
            | "ebac@ebac.com.br" | "José" | "Ernesto" | ""       | "Av. Joseiro" | "Belo Horizonte" | "06780-001" | "11 999994444" | "Os campos com * obrigatoriamente devem ser preencido" |
            | "ebac@ebac.com.br" | "José" | "Ernesto" | "Brasil" | ""            | "Belo Horizonte" | "06780-001" | "11 999994444" | "Os campos com * obrigatoriamente devem ser preencido" |
            | "ebac@ebac.com.br" | "José" | "Ernesto" | "Brasil" | "Av. Joseiro" | ""               | "06780-001" | "11 999994444" | "Os campos com * obrigatoriamente devem ser preencido" |
            | "ebac@ebac.com.br" | "José" | "Ernesto" | "Brasil" | "Av. Joseiro" | "Belo Horizonte" | ""          | "11 999994444" | "Os campos com * obrigatoriamente devem ser preencido" |
            | "ebac@ebac.com.br" | "José" | "Ernesto" | "Brasil" | "Av. Joseiro" | "Belo Horizonte" | "06780-001" | ""             | "Os campos com * obrigatoriamente devem ser preencido" |
            | ""                 | "José" | "Ernesto" | "Brasil" | "Av. Joseiro" | "Belo Horizonte" | "06780-001" | "11 999994444" | "Os campos com * obrigatoriamente devem ser preencido" |