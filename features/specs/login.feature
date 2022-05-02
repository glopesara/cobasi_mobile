#language: pt

Funcionalidade: Login
    @login @smoke 
    Cenario: Login com sucesso
        Dado que acesso a tela de Login
            E submeto minhas credenciais:
            | email | glopesarasp@gmail.com |
            | senha | Ga250400              |
        Então deve estar logado
    @login @smoke 
    Cenario: Login pelo amigo cobasi
        Dado que acesso a tela de amigo cobasi
            E submeto minhas credenciais:
            | email | glopesarasp@gmail.com |
            | senha | Ga250400              |
        Então tenho que ver o quadro de pontos
    @login @smoke 
    Cenario: Login pelo amigo cobasi (mundo cobasi)
        Dado que acesso a tela de amigo cobasi pelo mundo cobasi
            E submeto minhas credenciais:
            | email | glopesarasp@gmail.com |
            | senha | Ga250400                    |
        Então tenho que ver o quadro de pontos
    @login @smoke 
    Cenario: Realizar login pelo favoritos
        Dado que eu acesse o menu de favoritos
            E clico em entrar na conta
            E submeto minhas credenciais:
            | email | glopesarasp@gmail.com |
            | senha | Ga250400              |
            E acesse o meu "Mais"
        Então deve estar logado
    @login @smoke 
    Cenario: Realizar login pelo favoritos (busca)
        Dado que eu realize a seguinte busca
            | nome | ração cachorro |
            E seleciono um produto
            E clico em favoritar produto
            E submeto minhas credenciais:
            | email | glopesarasp@gmail.com |
            | senha | Ga250400              |
            E acesse o meu "Mais"
        Então deve estar logado
    @login @smoke  
    Cenario: Login pelo menu meu desconto
        Dado que eu acesse o meu desconto
            E clico em pular
            E clico em login
            E submeto minhas credenciais:
            | email | glopesarasp@gmail.com |
            | senha | Ga250400              |
        Então devo ver as ofertas
    @login
    Cenario: Login pela assinatura (Mundo Cobasi)
        Dado que eu acesse a tela de assinatura pelo mundo cobasi
            E submeto minhas credenciais:
            | email | glopesarasp@gmail.com |
            | senha | Ga250400              |
            E acesse o meu "Mais"
        Então deve estar logado
