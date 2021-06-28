Dado("que acesso a tela de Login") do
  @navegador.selecionar_opcao_menus("Mais")
  @mais.selecionar_opcao("Login")
  @login.selecionar_opcao("E-mail e senha")
end

Quando("submeto minhas credenciais:") do |table|
  usuario = table.rows_hash
  @login.logar(usuario)
end

Dado("acesse o meu {string}") do |string|
  @navegador.selecionar_opcao_menus("Mais")
end

Então("devo ver a mensagem {string}") do |alerta|
  alerta = find_element(xpath: "//android.view.View[@text='#{alerta}']")
  expect(alerta.displayed?).to be true
end

Então("deve estar logado") do
  resultado = find_element(xpath: "//android.widget.TextView[@text='Minha conta']")
  expect(resultado.displayed?).to be true
end
