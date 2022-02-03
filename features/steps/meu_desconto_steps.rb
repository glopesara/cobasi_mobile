Dado("acesse o meu desconto") do
  @navegador.selecionar_opcao_menus("Meu desconto")
end
Dado("clico em pular") do
  find_element(xpath: "//android.widget.TextView[contains(@text, 'Disponível apenas')]")
  driver.manage.timeouts.implicit_wait = 2
  begin
    @condicao = find_element(xpath: "//android.widget.TextView[@text='Próximo']").displayed?
  rescue
    @condicao = false
  end
  while @condicao == true
    find_element(xpath: "//android.widget.TextView[@text='Próximo']").click
    begin
      @condicao = find_element(xpath: "//android.widget.TextView[@text='Próximo']").displayed?
    rescue
      @condicao = false
    end
  end
  driver.manage.timeouts.implicit_wait = 30
end
Então("devo ver as ofertas") do
  elemento = find_element(xpath: "//android.widget.TextView[@text='Selecione os descontos pela categoria desejada:']")
  expect(elemento.displayed?).to be true
end

Dado("que eu acesse o meu desconto") do
  @navegador.selecionar_opcao_menus("Meu desconto")
end

Dado("clico em login") do
  find_element(xpath: "//android.widget.TextView[@text='Login']").click
end

Dado("realize o login com") do |table|
  usuario = table.rows_hash
  @login.logar(usuario)
end

Dado("vou para descontos ativos") do
  sleep 2
  ativos = find_elements(xpath: "//android.widget.TextView[contains(@text, 'Ativados')]")
  ativos[1].click
end

Dado("seleciono todos os descontos ativos") do
  sleep 2
  #   find_element(xpath: "//android.widget.CheckBox[@index='2']").click
  find_element(xpath: "//android.widget.TextView[@text='Selecionar todos e comprar']").click
end

Dado("clico em adicionar ao carrinho") do
  find_element(xpath: "//android.widget.TextView[contains(@text, 'Adicionar ao carrinho')]").click
end

Dado("ative um desconto") do
  #não consigo ativar dando scroll
  # driver.manage.timeouts.implicit_wait = 3
  # begin
  #   @condicao = find_element(xpath: "//android.widget.Switch").displayed?
  # rescue
  #   @condicao = false
  # end
  # while @condicao == false
  #   scroll = { start_x: 0.46, start_y: 1233, end_x: 0.46, end_y: 200, duration: 2000 }
  #   Appium::TouchAction.new.swipe(scroll).perform
  #   begin
  #     @condicao = find_element(xpath: "//android.widget.Switch").displayed?
  #   rescue
  #     @condicao = false
  #   end
  # end
  # driver.manage.timeouts.implicit_wait = 30

  desconto = find_elements(xpath: "//android.widget.Switch")
  bounds = desconto[0].attribute("bounds")
  validaor = bounds[-5, 4]
  desconto[0].click
  validacao = find_element(xpath: "//android.widget.TextView[contains(@bounds,'#{validaor}')]")
  expect(validacao.attribute("text")).to eql "Ativado"
end
