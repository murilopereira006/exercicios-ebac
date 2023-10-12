#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP, quero configurar meu produto de acordo com meu tamanho e gosto, escolher a quantidade para depois inserir no carrinho

Contexto:
Dado que eu acesse a página de produto da EBAC-SHOP

Cenário: Adicionar produto ao carrinho com sucesso
Quando eu escolher o tamanho do produto "M"
E esclher a cor "azul"
E esclher a quantidade de "2" itens
Então exibir a menssagem "produto adicionado ao carrinho"

Cenário: Limpar carrinho
Quando eu escolher o tamanho do produto "M"
E esclher a cor "azul"
E esclher a quantidade de "1" item
E clicar em "limpar"
Então exibir a menssagem "carrinho esta vazio"

Cenário: Mais de 10 itens
Quando eu escolher o tamanho do produto "M"
E esclher a cor "azul"
E esclher a quantidade de "11" itens
Então exibir a menssagem "A quantidade de itens tem que ser menos do que 10"

Cenário: Sem cor do produto
Quando eu escolher o tamanho do produto "M"
E esclher a quantidade "1"
Então exibir a menssagem "A cor do produto não pode ser vazio"

Cenário: Sem tamanho do produto
Quando esclher a cor "azul"
E esclher a quantidade "2"
Então exibir a menssagem "O tamanho do produto não pode ser vazio"

Cenário: Sem quantidade do produto
Quando eu escolher o tamanho do produto "M"
E esclher a cor "azul"
Então exibir a menssagem "A quantidade do produto não pode ser vazio ou 0"
