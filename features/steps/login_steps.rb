Dado("que acesso a tela de Login") do
  @navegador.selecionar_opcao_menus("Mais")
  @mais.selecionar_opcao("Login")
  @login.selecinar_opcao("E-mail e senha")
end

Quando("submeto minhas credenciais:") do |table|
  usuario = table.rows_hash
  @login.logar(usuario)
end

Dado("acesse o meu {string}") do |string|
  @navegador.selecionar_opcao_menus("Mais")
end

Então("deve estar logado") do
  resultado = find_element(xpath: "//android.widget.TextView[@text='Minha conta']")
  expect(resultado.displayed?).to be true
end
