#language: pt

Funcionalidade: Login
    @smoke
    Cenario: Login com sucesso
        Dado que acesso a tela de Login
            E submeto minhas credenciais:
            | email | glopesarasp@gmail.com |
            | senha | Ga250400              |
            E acesse o meu "Mais"
        Então deve estar logado
    @tentativalogin @smoke
    Esquema do Cenario: Tentativa de Login
        Dado que acesso a tela de Login
            E submeto minhas credenciais:
            | email | <email_imput> |
            | senha | <senha_imput> |
        Então devo ver a mensagem "<mensagem_output>"

        Exemplos:

            | email_imput           | senha_imput | mensagem_output                    |
            | glopesarasp@gmail.com |             | O campo senha deve ser informado.  |
            |                       | teste12345  | E-mail inválido |