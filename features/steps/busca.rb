Dado("que eu realize a seguinte busca") do |table|
  produto = table.rows_hash
  @navegador.realizar_busca(produto)
end

Dado("seleciono um produto") do
  @catalogo.selecionar_produto()
end

Então("deve ver a tela de detalhes do produto") do
  elemento = find_element(xpath: "//android.widget.Button[@text='Comprar']")
  expect(elemento.displayed?).to be true
end

#filtros
Dado("que eu acesse o menu {string}") do |string|
  @navegador.selecionar_opcao_menus(string)
end

Dado("selecione a categoria {string}") do |string|
  find_element(xpath: "//android.widget.TextView[@text='#{string}']").click
end

Dado("seleciono {string}") do |string|
  find_element(xpath: "//android.widget.TextView[@text='#{string}']").click
end
