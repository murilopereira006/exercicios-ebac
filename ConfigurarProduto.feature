            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP, quero configurar meu produto de acordo com meu tamanho e gosto, escolher a quantidade para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de produto da EBAC-SHOP

            Cenário: Limpar carrinho
            Quando clicar em "limpar"
            Então exibir a menssagem "carrinho esta vazio"

            Esquema do Cenário: Multiplos cenários
            Quando eu escolher o tamanho do produto <tamanho>, <cor> e <quantidade>
            Então exibir a menssagem <menssagem>

            | tamanho | cor    | quantidade | menssagem                                           |
            | "M"     | "azul" | 1          | "Produto apto a ser adicionado ao carrinho"         |
            | "M"     | "azul" | 11         | "A quantidade de itens tem que ser menos do que 10" |
            | "M"     | ""     | 1          | "A cor do produto não pode ser vazio"               |
            | ""      | "azul" | 2          | "O tamanho do produto não pode ser vazio"           |
            | "M"     | ""     | 1          | "A quantidade do produto não pode ser vazio ou 0"   |

