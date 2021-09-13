#language: pt

Funcionalidade: Login
    @smoke @login
    Cenario: Login com sucesso
        Dado que acesso a tela de Login
            E submeto minhas credenciais:
            | email | glopesarasp@gmail.com |
            | senha | Ga250400              |
            E acesse o meu "Mais"
        Então deve estar logado
        @logincobasi
    Cenario: Login pelo amigo cobasi
        Dado que acesso a tela de amigo cobasi
            E faço login no pwa:
            | email | glopesarasp@gmail.com |
            | senha | Ga250400              |
        Então tenho que ver o quadro de pontos
    Cenario: Login pelo amigo cobasi (mundo cobasi)
        Dado que acesso a tela de amigo cobasi pelo mundo cobasi
            E faço login no pwa:
            | email | glopesarasp@gmail.com |
            | senha | Ga250400              |
        Então tenho que ver o quadro de pontos

    Cenario: Realizar login pelo favoritos
        Dado que eu realize a seguinte busca
            | nome | ração cachorro |
            E seleciono um produto
            E clico em favoritar produto
            E faço login no pwa:
            | email | glopesarasp@gmail.com |
            | senha | Ga250400              |
            E acesse o meu "Mais"
        Então deve estar logado