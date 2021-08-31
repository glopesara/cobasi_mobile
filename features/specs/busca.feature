#language: pt

Funcionalidade: Busca
    @busca @smoke
    Cenario: Busca pelo nome do produto
        Dado que eu realize a seguinte busca
            | nome | ração cachorro |
            E seleciono um produto
        Então deve ver a tela de detalhes do produto
    # @filtros @smoke
    # Esquema do Cenario: Busca por filtros
    #     Dado que eu acesse o menu "Categorias"
    #         E selecione a "<categoria>"
    #         E seleciono a "<categoria_datalhes>"
    #         E seleciono o "<serviço>"
    #         E seleciono um produto
    #     Então deve ver a tela de detalhes do produto

    #     Exemplos:

    #         | categoria          | categoria_datalhes   | serviço              |
    #         | Cachorros          | Alimentação          | Ração                |
    #         | Gatos              | Farmácia             | Vermífugo            |
    #         | Pássaros           | Brinquedo            |                      |
    #         | Peixes             | Bactericida          |                      |
    #         | Outros Pets        | Hamster              |                      |
    #         | Casa e Jardim      | Lazer                | Churrasco            |
    #         | Linha Profissional | Tratamento e Higiene | Shampoo Profissional |
    #         | Pessoas            | Moda                 |                      |
    #         | Ambientes          | Área externa         |                      |
    #         | Marcas             | Petmais              |                      |

