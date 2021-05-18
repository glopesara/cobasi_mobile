#language: pt
Funcionalidade: Cadastro
    @senha
    Esquema do Cenario: Tentativa de cadastro
        Dado que eu acesse a tela de login 
            E selecione a opção com email e senha
            E click em não tem uma senha
            E submeta o formulario de cadastro com
            | email         | senha         | senhaconfirma         | id_mensagem   |
            | <email_imput> | <senha_imput> | <senhaconfirma_imput> | <id_mensagem> |
        Então devo ver a "<mensagem_output>"
        Exemplos:
            | email_imput     | senha_imput | senhaconfirma_imput | mensagem_output      | id_mensagem              |
            |                 |             |                     | Preencha este campo. | #appendedInputButton     |
            | teste@teste.com |             |                     | Preencha este campo. | #inputNewPassword        |
            | teste@teste.com | teste       |                     | Preencha este campo. | #inputConfirmNewPassword |
            | teste@teste.com |             | teste               | Preencha este campo. | #inputNewPassword        |
    Esquema do Cenario: Tentativa de cadastro senhas não iguais
        Dado que eu acesse a tela de login 
            E selecione a opção com email e senha
            E click em não tem uma senha
            E submeta o formulario de cadastro com
            | email         | senha         | senhaconfirma         | id_mensagem   |
            | <email_imput> | <senha_imput> | <senhaconfirma_imput> | <id_mensagem> |
        Então devo ver a "<mensagem_output>" de senhas não iguais
        Exemplos:
            | email_imput     | senha_imput | senhaconfirma_imput | mensagem_output          | id_mensagem                |
            | teste@teste.com | teste       | tesssst             | As senhas não são iguais | p[ng-show='dontMatchPswd'] |
            | teste@teste.com | tesssst     | teste               | As senhas não são iguais | p[ng-show='dontMatchPswd'] |
    @cadastro
    Cenario: Validações de sua senha deve ter
        Dado que eu acesse a tela de login 
            E selecione a opção com email e senha
            E click em não tem uma senha
            E submeta o formulario de cadastro com
            | email           | senha | senhaconfirma | find                                               |
            | teste@teste.com | teste | teste         | span[ng-show='passwordHasLowerCaseLetter'].ng-hide |
        Então devo ver o chek
