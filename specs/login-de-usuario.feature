#language: pt

Funcionalidade: Login
    @login
    Cenario: Login realizado com sucesso
        Dado que eu acesse a tela de login
            E selecione a opção com email e senha
            E submeta o formulario de login com
            | email                       | senha    |
            | gabriel.lopes.ara@gmail.com | Ga250400 |
        Então devo ser redirecionado para tela do cliente
    @tentativalogin
    Esquema do Cenario: Tentativa de login
        Dado que eu acesse a tela de login
            E selecione a opção com email e senha
            E submeta o formulario de login com
            | email         | senha         | id_mensagem   |
            | <email_input> | <senha_input> | <id_mensagem> |
        Então devo ver a '<mensagem_output>' de alerta
        Exemplos:
            | email_input     | senha_input | mensagem_output                     | id_mensagem    |
            | teste@teste.com |             | Preencha este campo.                | #inputPassword |
            | testes          |             | Inclua um "@" no endereço de e-mail | #inputEmail    |
            | testes@         |             | Insira uma parte depois de          | #inputEmail    |