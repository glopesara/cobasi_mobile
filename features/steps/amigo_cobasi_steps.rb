# encoding: UTF-8
Dado("que eu realize o login com") do |table|
  @screen.home.selecionar_opcao_menus("Mais")
  @screen.mais.selecionar_opcao("Login")
  usuario = table.rows_hash
  @screen.login.logar(usuario)
end

Dado("entre no menu amigo cobasi") do
  @screen.home.selecionar_opcao_menus("Mais")
  @screen.mais.selecionar_opcao("Amigo Cobasi")
end

Então("tenho que ver o quadro de pontos") do
  elemento = @screen.amigo_cobasi.quadro_de_pontos
  expect(elemento.displayed?).to be true
end

#codigo comentado por ter mudado o amigo cobasi

# Dado("selecione faça a desão gratuita aqui") do
#   @modal_amigo_cobasi.modal_home()
# end

# Dado("aceite os termos") do
#   @modal_amigo_cobasi.aceite_termos()
# end

# Dado("clicar em fazer adesão") do
#   @modal_amigo_cobasi.realizar_adesao()
# end

# Dado("seleciono um desconto para ser resgatado") do
#   @amigo_cobasi.selecionar_ponto()
# end

# Dado("faço o swipe para ir para tela de confirmação dos pontos") do
#   @amigo_cobasi.swipe()
# end

# Dado("verifico que o desconto amigo cobasi esteja aplicado") do
#   @tela_carrinho.desconto_amigo_cobasi()
# end

# Dado("vou para tela de endereço") do
#   @tela_carrinho.btn_finalizar()
# end

# Dado("seleciono o frete Expressa") do
#   @checkout.selecionar_entrega("Expressa")
# end
