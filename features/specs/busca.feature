#language: pt

Funcionalidade: Busca
    @busca @smoke 
    Cenario: Busca pelo nome do produto
        Dado que eu realize a seguinte busca
            | nome | bolinha |
            E seleciono um produto
        Então deve ver a tela de detalhes do produto
    @busca @smoke @filtros 
    Esquema do Cenario: Busca por filtros
        Dado que eu acesse o menu "Categorias"
            E selecione a "<categoria>"
            E seleciono a "<categoria_datalhes>"
            E seleciono o "<serviço>"
            E seleciono um produto
        Então deve ver a tela de detalhes do produto

        Exemplos:

            | categoria          | categoria_datalhes   | serviço              |
            | Cachorros          | Ração                | Ração Seca           |
            | Gatos              | Tocas e Caminhas     | Tocas                |
            | Pássaros           | Brinquedos           |                      |
            | Peixes             | Aquários             | Aquários             |
            | Outros Pets        | Roedores             | Ração e Alimentos    |
            | Casa e Jardim      | Lazer                | Lazer                |
            | Linha Profissional | Tratamento e Higiene | Shampoo Profissional |
            | Marcas             | Petmais              |                      |
