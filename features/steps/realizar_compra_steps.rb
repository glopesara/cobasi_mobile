Dado("clico no botão comprar") do
  @tela_produto.botao_comprar()
end

Dado("clico no carrinho") do
  sleep 2
  find_element(xpath: "//android.widget.TextView[@bounds ='[966,132][1032,199]']").click
end

Dado("clico em ver carrinho no alerta") do
  @tela_produto.alerta_carrinho()
end

Dado("clico em finalizar comprar") do
  @carrinho_pwa.finalizar_compra()
end

Dado("adiciono o um novo e-mail") do
  @checkout_pwa.adicionar_email()
end

Dado("clico em cotinuar") do
  @checkout_pwa.btn_continuar()
end

Dado("submeto o formulario da dados pessoais") do
  @checkout_pwa.dados_pessoais_form()
end

Dado("submeto o formulario de endereço") do
  @checkout_pwa.edereco_form()
end

Dado("clico em ir para entrega") do
  @checkout_pwa.entrega_btn()
end

Dado("seleciono o frete Economica") do
  @checkout_pwa.selecionar_entrega("Economica")
end

Dado("seleciono a  forma de pagamento como Boleto Bancário") do
  @checkout_pwa.pagamento_boleto()
end
Dado("clico em finalizar pedido") do
  @checkout_pwa.finalizar_pedido()
end

Então("devo ver a tela de pedido realizado com sucusso") do
  resultado = find_element(xpath: "//android.widget.TextView[contains(@text, 'Pedido n')]")
  expect(resultado.displayed?).to be true
end

Dado("adiciono o e-mail {string}") do |email|
  @checkout_pwa.adicionar_email(email)
end

Dado("clico em adicionar um cartão de credito") do
  @checkout_pwa.btn_adc_cartao()
end

Dado("submeta o formulario de cartão de credito") do
  @checkout_pwa.cartao_form()
end

Dado("seleciono o agendamento da entrega") do
  @checkout_pwa.selecionar_entrega("Entrega agendada")
end
