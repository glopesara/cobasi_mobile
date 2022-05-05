#language: pt

Funcionalidade: Fluxo de compras
    @compra @smoke 
    Cenario: Realizar compra com Bolteto 1
        Dado que eu realize a seguinte busca
            | nome | ração cachorro |
            E seleciono um produto
            E clico no botão comprar
            E clico em ver carrinho no alerta
            E adiciono o CEP '85030120'
            E clico em finalizar comprar
            E e faço login no checkout:
            | email | glopesarasp@gmail.com |
            | senha | Ga250400              |
            E clico em continuar para entrega
            E seleciono o frete Economica
            E seleciono a  forma de pagamento como Boleto Bancário
            E clico em finalizar pedido
        Então devo ver a tela de pedido realizado com sucusso
    @compra @smoke
    Cenario: Realizar compra com Bolteto 2
        Dado que eu realize a seguinte busca
            | nome | ração cachorro |
            E seleciono um produto
            E clico no botão comprar
            E clico em ver carrinho no alerta
            E clico em finalizar comprar
            E adiciono o CEP '85030120'
            E clico em finalizar comprar
            E e faço login no checkout:
            | email | glopesarasp@gmail.com |
            | senha | Ga250400              |
            E clico em continuar para entrega
            E seleciono o frete Economica
            E seleciono a  forma de pagamento como Boleto Bancário
            E clico em finalizar pedido
        Então devo ver a tela de pedido realizado com sucusso

    @compra @smoke @pix 
    Cenario: Realizar compra com pix
        Dado que eu realize a seguinte busca
            | nome | ração cachorro |
            E seleciono um produto
            E clico no botão comprar
            E clico em ver carrinho no alerta
            E clico em finalizar comprar
            E adiciono o CEP '85030120'
            E clico em finalizar comprar
            E e faço login no checkout:
            | email | glopesarasp@gmail.com |
            | senha | Ga250400              |
            E clico em continuar para entrega
            E seleciono o frete Economica
            E seleciono a  forma de pagamento como pix
            E clico em finalizar pedido
        Então devo ver a tela com a chave pix para pagamento

    @compra @smoke @pagamentointantaneo 
    Cenario: Realizar compra com Pagamento instantâneo
        Dado que eu realize a seguinte busca
            | nome | ração cachorro |
            E seleciono um produto
            E clico no botão comprar
            E clico em ver carrinho no alerta
            E clico em finalizar comprar
            E adiciono o CEP '85030120'
            E clico em finalizar comprar
            E e faço login no checkout:
            | email | glopesarasp@gmail.com |
            | senha | Ga250400              |
            E clico em continuar para entrega
            E seleciono o frete Economica
            E seleciono a  forma de pagamento como Pagamento instantâneo
            E clico em finalizar pedido
        Então devo ver a tela de formas de Pagamento instantâneo

    @compra @agendamento @smoke
    Cenario: Realizar compra com Bolteto entrega por agendamento
        Dado que eu realize a seguinte busca
            | nome | ração cachorro |
            E seleciono um produto
            E clico no botão comprar
            E clico em ver carrinho no alerta
            E adiciono o CEP '09230600'
            E clico em finalizar comprar
            E e faço login no checkout:
            | email | glopesarasp@gmail.com |
            | senha | Ga250400              |
            E clico em continuar para entrega
            E seleciono o agendamento da entrega
            E seleciono a  forma de pagamento como Boleto Bancário
            E clico em finalizar pedido
        Então devo ver a tela de pedido realizado com sucusso

#        @cartão
# Cenario: Realizar compra com Cartão de credito usuario novo
#     Dado que eu realize a seguinte busca
#         | nome | ração cachorro |
#         E seleciono um produto
#         E clico no botão comprar
#         E clico no carrinho
#         # E clico em ver carrinho no alerta
#         E clico em finalizar comprar
#         E adiciono o um novo e-mail
#         E submeto o formulario da dados pessoais
#         E submeto o formulario de endereço
#         E clico em ir para entrega
#         E seleciono o frete Economica
#         E clico em adicionar um cartão de credito
#         E submeta o formulario de cartão de credito
#         E clico em finalizar pedido
# Então devo ver a tela de pedido realizado com sucusso