#language: pt
Funcionalidade: Amigo cobasi
    @smoke
    Cenario: Acesso a tela amigo cobasi
        Dado que eu realize o login com
            | email | glopesarasp@gmail.com |
            | senha | Ga250400              |
            E entre no menu amigo cobasi
        Então tenho que ver o quadro de pontos
# @cadastroamigocobasi @smoke
# Cenario: Op-tin amigo Cobasi home
#     Dado que eu realize o login com
#         | email | gabriel.lopes.ara@gmail.com |
#         | senha | Ga250400                    |
#         E selecione faça a desão gratuita aqui
#         E aceite os termos
# # E clicar em fazer adesão
# # Então tenho que ver o quadro de pontos
# @trocadepontos @smoke
# Cenario: Resgate de pontos
#     Dado que eu realize o login com
#         | email | ftamburus@gmail.com |
#         | senha | 123@Cobasi          |
#         E entre no menu amigo cobasi
#         E seleciono um desconto para ser resgatado
#         E faço o swipe para ir para tela de confirmação dos pontos

# @compra @compracobasi
# Cenario: Realizar compra com Bolteto usuario ja existente
#     Dado que eu realize o login com
#         | email | ftamburus@gmail.com |
#         | senha | 123@Cobasi          |
#         E que eu realize a seguinte busca
#         | nome | ração cachorro |
#         E seleciono um produto
#         E clico no botão comprar
#         E clico em ver carrinho no alerta
#         E verifico que o desconto amigo cobasi esteja aplicado
#         E vou para tela de endereço
#         E clico em ir para entrega
#         E seleciono o agendamento da entrega
#         E seleciono a  forma de pagamento como Boleto Bancário
#     E clico em finalizar pedido
# Então devo ver a tela de pedido realizado com sucusso