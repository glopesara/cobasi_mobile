Dado("que eu realize o login com") do |table|
  @navegador.selecionar_opcao_menus("Mais")
  @mais.selecionar_opcao("Login")
  @login.selecionar_opcao("E-mail e senha")
  usuario = table.rows_hash
  @login.logar(usuario)
end

Dado("entre no menu amigo cobasi") do
  @navegador.selecionar_opcao_menus("Mais")
  @mais.selecionar_opcao("Amigo Cobasi")
end

Então("tenho que ver o quadro de pontos") do
  elemento = find_element(xpath: "//android.widget.TextView[@text='Seus pontos']")
  expect(elemento.displayed?).to be true
end
