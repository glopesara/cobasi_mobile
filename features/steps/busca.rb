# encoding: UTF-8
Dado("que eu realize a seguinte busca") do |table|
  produto = table.rows_hash
  @screen.home.realizar_busca(produto)
end

Dado("seleciono um produto") do
  @screen.catalogo.selecionar_produto()
end

Então("deve ver a tela de detalhes do produto") do
  elemento = @screen.pdp.cod_produto
  expect(elemento.displayed?).to be true
end

#filtros
Dado("que eu acesse o menu {string}") do |string|
  @screen.home.selecionar_opcao_menus(string)
end

Dado("selecione a {string}") do |categoria|
  @screen.categoria.slecionar_categoria(categoria)
end

Dado("seleciono a {string}") do |categoria_datalhes|
  @screen.categoria.slecionar_categoria_detalhe(categoria_datalhes)
end
Dado("seleciono o {string}") do |servico|
  if servico.length > 0
    @screen.categoria.selecionar_servico(servico)
  end
end
