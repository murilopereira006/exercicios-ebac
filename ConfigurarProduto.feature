Feature: Configurar produto
    Como cliente da EBAC-SHOP, quero configurar meu produto de acordo com meu tamanho e gosto, escolher a quantidade para depois inserir no carrinho

    Background:
        Given que eu acesse a página de produto da EBAC-SHOP

    Scenario: Adicionar produto ao carrinho com sucesso
        When eu escolher o tamanho do produto "M"
        And esclher a cor "azul"
        And esclher a quantidade de "2" itens
        Then exibir a menssagem "produto adicionado ao carrinho"

    Scenario: Limpar carrinho
        When eu escolher o tamanho do produto "M"
        And esclher a cor "azul"
        And esclher a quantidade de "1" item
        And clicar em "limpar"
        Then exibir a menssagem "carrinho esta vazio"

    Scenario: Mais de 10 itens
        When eu escolher o tamanho do produto "M"
        And esclher a cor "azul"
        And esclher a quantidade de "11" itens
        Then exibir a menssagem "A quantidade de itens tem que ser menos do que 10"

    Scenario: Sem cor do produto
        When eu escolher o tamanho do produto "M"
        And esclher a quantidade "1"
        Then exibir a menssagem "A cor do produto não pode ser vazio"

    Scenario: Sem tamanho do produto
        When esclher a cor "azul"
        And esclher a quantidade "2"
        Then exibir a menssagem "O tamanho do produto não pode ser vazio"

    Scenario: Sem quantidade do produto
        When eu escolher o tamanho do produto "M"
        And esclher a cor "azul"
        Then exibir a menssagem "A quantidade do produto não pode ser vazio ou 0"
