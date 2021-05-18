#language: pt
Funcionalidade: Busca de produto
    Cenario: Realizar uma busca e clicar em Continuar Comprando
        Dado que eu faça a busca do seguinte produto
            | nome | ração cachorro |
            E clico em algum produto
            E na tela de detalhes do produto clico em comprar
            E clico em continuar comprando
        Então meu carrinho deve estar com um produto

    Cenario: Realizar uma busca e clicar em Finalizar compra
        Dado que eu faça a busca do seguinte produto
            | nome | ração cachorro |
            E clico em algum produto
            E na tela de detalhes do produto clico em comprar
            E no modal clico em finalizar compra
        Então devo ser redirecionado para checkout
