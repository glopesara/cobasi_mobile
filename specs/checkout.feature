#language: pt

Funcionalidade: Checkout

    @temp
    Cenario: Realizar uma busca e ir ate a checkout
        Dado que eu faça a busca do seguinte produto
            | nome | ração cachorro |
            E clico em algum produto
            E na tela de detalhes do produto clico em comprar
            E no modal clico em finalizar compra
            E clicar em finalizar compra
            E submeto o novo email
            E submeto o formulario de identificação
            E submeto o formulario de Endereço
            E clicar em finalizar compra
            E submeta o formulario de cartão de credito