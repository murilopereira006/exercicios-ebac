            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP, quero concluir meu cadastro para finalizar minha compra

            Esquema do Cenário: Múltiplos cenários
            Dado que eu acesse a página de checkout da EBAC-SHOP
            Quando  eu digitar o <nome>, <email>, <sobrenome>, <país>, <endereço>, <cidade>, <CEP>, <telefone> e <menssagem>
            E clicar em cadastrar
            Então Deve exibir a <menssagem>

            | email              | nome   | sobrenome | país     | endereço      | cidade           | CEP         | telefone       | menssagem                                              |
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