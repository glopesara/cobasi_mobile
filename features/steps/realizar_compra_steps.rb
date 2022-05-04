# encoding: UTF-8
Dado("clico no botão comprar") do
  @screen.pdp.botao_comprar()
end

Dado("clico em ver carrinho no alerta") do
  @screen.pdp.alerta_carrinho()
end

Dado("clico em finalizar comprar") do
  @screen.carrinho.finalizar_compra()
end

Dado("clico em cotinuar") do
  @screen.checkout.btn_continuar()
end

Dado("clico em continuar para entrega") do
  @screen.checkout.entrega_btn()
end

Dado("seleciono o frete Economica") do
  @screen.checkout.selecionar_entrega("Economica")
end

Dado("seleciono a  forma de pagamento como Boleto Bancário") do
  @screen.checkout.forma_pagamento("Boleto Bancário")
end

Dado("seleciono a  forma de pagamento como pix") do
  @screen.checkout.forma_pagamento("Pix")
end

Dado("seleciono a  forma de pagamento como Pagamento instantâneo") do
  @screen.checkout.forma_pagamento("Pagamento instantâneo")
end

Dado("clico em finalizar pedido") do
  @screen.checkout.finalizar_pedido()
end

Então("devo ver a tela de pedido realizado com sucusso") do
  resultado = @screen.compra_confirmada.nr_pedido
  expect(resultado.displayed?).to be true
end

Dado("adiciono o e-mail {string}") do |email|
  @screen.checkout.adicionar_email(email)
end

Dado("clico em adicionar um cartão de credito") do
  @screen.checkout.btn_adc_cartao()
end

Dado("submeta o formulario de cartão de credito") do
  @screen.checkout.cartao_form()
end

Dado("seleciono o agendamento da entrega") do
  @screen.checkout.selecionar_entrega("Entrega agendada")
end

Dado("adiciono o CEP {string}") do |string|
  @screen.carrinho.adicionar_cep(string)
end

Então("devo ver a tela com a chave pix para pagamento") do
  resultado = @screen.checkout.chave_pix
  expect(resultado.displayed?).to be true
end

Então("devo ver a tela de formas de Pagamento instantâneo") do
  resultado = @screen.checkout.view_pgm_instantane
  expect(resultado.displayed?).to be true
end

Dado("e faço login no checkout:") do |table|
  usuario = table.rows_hash
  @login.login_checkout(usuario)
end
