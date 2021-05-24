Dado("clico no botão comprar") do
  @tela_produto.botao_comprar()
end

Dado("clico em ver carrinho no alerta") do
  @tela_produto.alerta_carrinho()
end

Dado("clico em finalizar comprar") do
  @tela_carrinho.finalizar_compra()
end

Dado("adiciono o um novo e-mail") do
  @checkout.adicionar_email()
end

Dado("clico em cotinuar") do
  @checkout.btn_continuar()
end

Dado("submeto o formulario da dados pessoais") do
  @checkout.dados_pessoais_form()
end

Dado("submeto o formulario de endereço") do
  @checkout.edereco_form()
end

Dado("clico em ir para entrega") do
  @checkout.entrega_btn()
end

Dado("seleciono o frete Economica") do
  @checkout.selecionar_entrega("Economica")
end

Dado("seleciono a  forma de pagamento como Boleto Bancário") do
  @checkout.pagamento_boleto()
end
Dado("clico em finalizar pedido") do
  @checkout.finalizar_pedido()
end

Então("devo ver a tela de pedido realizado com sucusso") do
  resultado = find_element(xpath: "//android.view.View[contains(@text, 'Pedido n')]")
  expect(resultado.displayed?).to be true
end

Dado("adiciono o e-mail {string}") do |email|
  @checkout.adicionar_email(email)
end

Dado("clico em adicionar um cartão de credito") do
  @checkout.btn_adc_cartao()
end

Dado("submeta o formulario de cartão de credito") do
  @checkout.cartao_form()
end
