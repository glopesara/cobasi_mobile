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
  @carrinho.finalizar_compra()
end

Dado("adiciono o um novo e-mail") do
  @checkout.adicionar_email()
end

Dado("clico em cotinuar") do
  @checkout.btn_continuar()
end

Dado("clico em continuar para entrega") do
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
  resultado = find_element(xpath: "//android.widget.TextView[contains(@text, 'Pedido Nº')]")
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

Dado("seleciono o agendamento da entrega") do
  @checkout.selecionar_entrega("Entrega agendada")
end

Dado("adiciono o CEP {string}") do |string|
  find_element(xpath: "//android.widget.TextView[@text='Produtos']")
  cep = find_elements(xpath: "//android.widget.EditText")
  cep[1].send_keys(string)
  find_element(xpath: "//android.widget.TextView[@text='Buscar']").click
  sleep 2
end

Dado("realize login com") do |table|
  usuario = table.rows_hash
  @login.logar(usuario)
end
