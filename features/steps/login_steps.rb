# encoding: UTF-8
Dado("que acesso a tela de Login") do
  @screen.home.selecionar_opcao_menus("Mais")
  @screen.mais.selecionar_opcao("Login")
end

Dado("que acesso a tela de amigo cobasi") do
  @screen.home.selecionar_opcao_menus("Mais")
  @screen.mais.selecionar_opcao("Amigo Cobasi")
end

Quando("submeto minhas credenciais:") do |table|
  usuario = table.rows_hash
  @screen.login.logar(usuario)
end

Dado("submeto minhas credenciais de tentativa de login:") do |table|
  usuario = table.rows_hash
  @login.tentativa_login(usuario)
end

Dado("acesse o meu {string}") do |string|
  @screen.home.selecionar_opcao_menus("Mais")
end

Então("devo ver a mensagem {string}") do |alerta|
  alerta = find_element(xpath: "//android.view.View[@text='#{alerta}']")
  expect(alerta.displayed?).to be true
end

Então("deve estar logado") do
  resultado = @screen.mais.login_confirmado
  expect(resultado.displayed?).to be true
end

Dado("que acesso a tela de amigo cobasi pelo mundo cobasi") do
  @screen.home.mundo_cobasi("amigo cobasi")
end

Dado("clico em favoritar produto") do
  @screen.pdp.favoritar
end

Dado("que eu acesse a tela de assinatura pelo mundo cobasi") do
  @screen.home.mundo_cobasi("assinatura")
end

Dado("que eu acesse o menu de favoritos") do
  @screen.home.selecionar_opcao_menus("Favoritos")
end

Dado("clico em entrar na conta") do
  @screen.favoritos.entrar_na_conta
end
