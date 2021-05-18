#language: pt

Funcionalidade: Busca

    Cenario: Busca
        Dado que eu realize a seguinte busca
            | nome | ração cachorro |
            E seleciono um produto
        E clico no botão comprar
        E clico em ver carrinho no alerta
        E clico em finalizar comprar
        E adiciono o e-mail
        E submeto o formulario da dados pessoais
        E submeto o formulario de endereço
        E clicar em ir para entrega
        E seleciono o frete Economica
        E seleciono a  forma de pagamento como Boleto Bancário
        E clicar em finalizar pedido
        Então devo ver a tela de pedido realizado com sucusso