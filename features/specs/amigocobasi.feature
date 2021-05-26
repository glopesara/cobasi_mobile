#language: pt
Funcionalidade: Amigo cobasi

    Cenario: Acesso a tela amigo cobasi
        Dado que eu realize o login com
            | email | glopesarasp@gmail.com |
            | senha | Ga250400              |
            E entre no menu amigo cobasi
        Então tenho que ver o quadro de pontos
    @cadastroamigocobasi
    Cenario: Op-tin amigo Cobasi menu mais
        Dado que eu realize o login com
            | email | gabriel.lopes.ara@gmail.com |
            | senha | Ga250400                    |
            E selecione faça a desão gratuita aqui
            E aceite os termos
            # E clicar em fazer adesão
        # Então tenho que ver o quadro de pontos
    @trocadepontos
    Cenario: Resgate de pontos
        Dado que eu realize o login com
            | email | ftamburus@gmail.com |
            | senha | 123@Cobasi                    |
            E entre no menu amigo cobasi
            E seleciono um desconto para ser resgatado
            E faço o swipe para ir para tela de confirmação dos pontos