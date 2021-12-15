#language: pt

Funcionalidade: Fluxo de compras
    @compra @smoke @pwa @nativa
    Cenario: Realizar compra com Bolteto login na checkout
        Dado que eu realize a seguinte busca
            | nome | ração cachorro |
            E seleciono um produto
            E clico no botão comprar
            # E clico no carrinho
            E clico em ver carrinho no alerta
            E adiciono um CEP
            E clico em finalizar comprar
             E submeto minhas credenciais:
            | email | glopesarasp@gmail.com |
            | senha | Ga250400!              |
    #     E submeto o formulario da dados pessoais
    #     E submeto o formulario de endereço
        E clico em continuar para entrega
        E seleciono o frete Economica
        E seleciono a  forma de pagamento como Boleto Bancário
        E clico em finalizar pedido
    Então devo ver a tela de pedido realizado com sucusso
    @compra @smoke @pwa
    Cenario: Realizar compra com Bolteto usuario novo 2
        Dado que eu realize a seguinte busca
            | nome | ração gato |
            E seleciono um produto
            E clico no botão comprar
            E clico no carrinho
            # E clico em ver carrinho no alerta
            E clico em finalizar comprar
            E adiciono o um novo e-mail
            E submeto o formulario da dados pessoais
            E submeto o formulario de endereço
            E clico em ir para entrega
            E seleciono 2o frete Economica
            E seleciono a  forma de pagamento como Boleto Bancário
            E clico em finalizar pedido
        Então devo ver a tela de pedido realizado com sucusso
    @cartão
    Cenario: Realizar compra com Cartão de credito usuario novo
        Dado que eu realize a seguinte busca
            | nome | ração cachorro |
            E seleciono um produto
            E clico no botão comprar
            E clico no carrinho
            # E clico em ver carrinho no alerta
            E clico em finalizar comprar
            E adiciono o um novo e-mail
            E submeto o formulario da dados pessoais
            E submeto o formulario de endereço
            E clico em ir para entrega
            E seleciono o frete Economica
            E clico em adicionar um cartão de credito
            E submeta o formulario de cartão de credito
            E clico em finalizar pedido
    # Então devo ver a tela de pedido realizado com sucusso
    @compra @smoke
    Cenario: Realizar compra com Bolteto usuario ja existente 1
        Dado que eu realize a seguinte busca
            | nome | ração cachorro |
            E seleciono um produto
            E clico no botão comprar
            E clico no carrinho
            # E clico em ver carrinho no alerta
            E clico em finalizar comprar
            E adiciono o e-mail "testes@testes.com"
            E clico em cotinuar
            E clico em ir para entrega
            E seleciono o frete Economica
            E seleciono a  forma de pagamento como Boleto Bancário
            E clico em finalizar pedido
        Então devo ver a tela de pedido realizado com sucusso
    @smoke
    Cenario: Realizar compra com Bolteto usuario ja existente 2
        Dado que eu realize a seguinte busca
            | nome | ração gato |
            E seleciono um produto
            E clico no botão comprar
            E clico no carrinho
            # E clico em ver carrinho no alerta
            E clico em finalizar comprar
            E adiciono o e-mail "testes@testes.com"
            E clico em cotinuar
            E clico em ir para entrega
            E seleciono o frete Economica
            E seleciono a  forma de pagamento como Boleto Bancário
            E clico em finalizar pedido
        Então devo ver a tela de pedido realizado com sucusso
    @compra @agendamento @smoke
    Cenario: Realizar compra com Bolteto usuario ja existente com agendamento
        Dado que eu realize a seguinte busca
            | nome | ração cachorro |
            E seleciono um produto
            E clico no botão comprar
            E clico no carrinho
            # E clico em ver carrinho no alerta
            E clico em finalizar comprar
            E adiciono o e-mail "teste@agendamento.com"
            E clico em cotinuar
            E clico em ir para entrega
            # E seleciono o agendamento da entrega para o dia 3
            E seleciono o agendamento da entrega
            E seleciono a  forma de pagamento como Boleto Bancário
            E clico em finalizar pedido
        Então devo ver a tela de pedido realizado com sucusso