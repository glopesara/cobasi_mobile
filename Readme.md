PARA TER ACESSO AO SERVIDOR CLI DO ALLURE

Instalando o scoop:

 - Abrir o PowerShell como admin
 - Executar o comando:

Set-ExecutionPolicy RemoteSigned -scope CurrentUser

 - Aceitar a politica de execução
 - Executar o comando:

iwr -useb get.scoop.sh | iex

https://scoop.sh/

-Executar o comando no cmder:
scoop install allure

Instalar o JVM:
https://www.oracle.com/br/java/technologies/javase/javase-jdk8-downloads.html
Instalar a versão do JDK8

	- Ir em arquivos de programa do Windows
	- Selecionar a pasta Java
	- Selecionar a pastaJDK8
	- E copiar o endereço do caminho da pasta
	- Acessar propriedades em meu computador clicando com o esquerdo do mouse
	- Configurações avançadas do ambiente
	- Variáveis de ambiente
	- Em variáveis do sistema clicar em novo 
	- Nome da variável = JAVA_HOME
	- Valor da variavel =  "caminho da pasta jdk8"

Para executar o servidor do allure:
	- Executar o comando 
allure serve "nome da pasta que contem o logs"
EX: allure serve logs\