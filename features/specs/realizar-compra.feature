#language: pt

Funcionalidade: Fluxo de compras
    @compra
    Cenario: Realizar compra com Bolteto usuario novo
        Dado que eu realize a seguinte busca
            | nome | ração cachorro |
            E seleciono um produto
            E clico no botão comprar
            E clico em ver carrinho no alerta
            E clico em finalizar comprar
            E adiciono o um novo e-mail
            E submeto o formulario da dados pessoais
            E submeto o formulario de endereço
            E clico em ir para entrega
            E seleciono o frete Economica
            E seleciono a  forma de pagamento como Boleto Bancário
            E clico em finalizar pedido
        Então devo ver a tela de pedido realizado com sucusso
        @cartão
        Cenario: Realizar compra com Cartão de credito usuario novo
        Dado que eu realize a seguinte busca
            | nome | ração cachorro |
            E seleciono um produto
            E clico no botão comprar
            E clico em ver carrinho no alerta
            E clico em finalizar comprar
            E adiciono o um novo e-mail
            E submeto o formulario da dados pessoais
            E submeto o formulario de endereço
            E clico em ir para entrega
            E seleciono o frete Economica
            E clico em adicionar um cartão de credito
            E submeta o formulario de cartão de credito
                E clico em finalizar pedido
        Então devo ver a tela de pedido realizado com sucusso
    @compra
    Cenario: Realizar compra com Bolteto usuario ja existente
        Dado que eu realize a seguinte busca
            | nome | ração cachorro |
            E seleciono um produto
            E clico no botão comprar
            E clico em ver carrinho no alerta
            E clico em finalizar comprar
            E adiciono o e-mail "testes@testes.com"
            E clico em cotinuar
            E clico em ir para entrega
            E seleciono o frete Economica
            E seleciono a  forma de pagamento como Boleto Bancário
            E clico em finalizar pedido
        Então devo ver a tela de pedido realizado com sucusso