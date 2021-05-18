#language: pt

Funcionalidade: Busca

    Cenario: Busca
        Dado que eu realize a seguinte busca
            | nome | ração cachorro |
            E seleciono um produto
        Então deve ver a tela de detalhes do produto
    @filtros
    Esquema do Cenario: Busca por filtros
        Dado que eu acesse o menu "Categorias"
            E selecione a categoria "<animais>"
            E seleciono "<animal_categoria>"
            E seleciono "<serviços>"
            E seleciono um produto
        Então deve ver a tela de detalhes do produto

        Exemplos:

            | animais   | animal_categoria | serviços  |
            | Cachorros | Alimentação      | Ração     |
            | Gatos     | Farmácia         | Vermífugo |
