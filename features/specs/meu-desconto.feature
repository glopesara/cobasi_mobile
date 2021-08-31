#language: pt

Funcionalidade: Meu desconto
    @meudesconto
    Cenario: Validar acesso ao meu desconto
        Dado que eu realize o login com
            | email | gabriel.lopes.ara@gmail.com |
            | senha | Ga250400                    |
            E acesse o meu desconto
            E clico em pular
        Então devo ver as ofertas
    @logindesconto
    Cenario: Login pelo menu meu desconto
        Dado que eu acesse o meu desconto
            E clico em pular
            E clico em login
            E realize o login com
            | email | gabriel.lopes.ara@gmail.com |
            | senha | Ga250400                    |
        Então devo ver as ofertas
    @meudescontocompra
    Cenario: Relaizar compra de uma oferta com desconto
        Dado que eu realize o login com
            | email | gabriel.lopes.ara@gmail.com |
            | senha | Ga250400                    |
            E acesse o meu desconto
            E clico em pular
            E vou para descontos ativos
            E seleciono todos os descontos ativos
            E clico em adicionar ao carrinho
            E clico em finalizar comprar
            E clico em ir para entrega
            E seleciono o frete Economica
            E seleciono a  forma de pagamento como Boleto Bancário
    #     E clico em finalizar pedido
    # Então devo ver a tela de pedido realizado com sucusso
    # @adesao
    # Cenario: Realizar adesão no meu desconto
    #     Dado que eu realize o login com
    #         | email | glopesarasp1@gmail.com |
    #         | senha | Ga250400!              |
    #         E acesse o meu desconto
    #         E clico em pular
    #         E aceite os termos
    #         E clicar em fazer adesão
    #     Então devo ver as ofertas
    # @ativardesconto
    # Cenario: Ativar oferta
    #     Dado que eu realize o login com
    #         | email | glopesarasp1@gmail.com |
    #         | senha | Ga250400!              |
    #         E acesse o meu desconto
    #         E clico em pular
    #         E ative um desconto