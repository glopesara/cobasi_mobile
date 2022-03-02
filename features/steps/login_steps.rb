Dado("que acesso a tela de Login") do
  @navegador.selecionar_opcao_menus("Mais")
  @mais.selecionar_opcao("Login")
end

Dado("que acesso a tela de amigo cobasi") do
  @navegador.selecionar_opcao_menus("Mais")
  @mais.selecionar_opcao("Amigo Cobasi")
end

Quando("submeto minhas credenciais:") do |table|
  usuario = table.rows_hash
  @login.logar(usuario)
end

Dado("submeto minhas credenciais de tentativa de login:") do |table|
  usuario = table.rows_hash
  @login.tentativa_login(usuario)
end

Dado("acesse o meu {string}") do |string|
  @navegador.selecionar_opcao_menus("Mais")
end

Então("devo ver a mensagem {string}") do |alerta|
  alerta = find_element(xpath: "//android.view.View[@text='#{alerta}']")
  expect(alerta.displayed?).to be true
end

Então("deve estar logado") do
  resultado = find_element(xpath: "//android.widget.TextView[@text='Meus dados']")
  expect(resultado.displayed?).to be true
end

Dado("que acesso a tela de amigo cobasi pelo mundo cobasi") do
  @mundo_cobasi.selecionar_opcao("amigo cobasi")
end

Dado("clico em favoritar produto") do
  find_element(xpath: "//android.widget.TextView[@bounds='[972,1376][1032,1437]']").click
end

Dado("faço login no pwa:") do |table|
  @login.selecionar_opcao("E-mail e senha")
  usuario = table.rows_hash
  @login.logar_pwa(usuario)
end

Dado("que eu acesse a tela de assinatura pelo mundo cobasi") do
  @mundo_cobasi.selecionar_opcao("assinatura")
end

Dado("que eu acesse o menu de favoritos") do
  @navegador.selecionar_opcao_menus("Favoritos")
end

Dado("clico em entrar na conta") do
  find_element(xpath: "//android.widget.TextView[@text='Entrar na conta']").click
end
