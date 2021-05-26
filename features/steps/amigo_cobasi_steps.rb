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

Dado("selecione faça a desão gratuita aqui") do
  find_element(xpath: "//android.widget.TextView[@text='Faça sua adesão gratuita aqui']").click
end

Dado("aceite os termos") do
  #checbok está com bug
  # find_element(xpath: "//android.widget.CheckBox").click
  find_element(xpath: "//android.view.ViewGroup[@index='17']").click
end

Dado("clicar em fazer adesão") do
  find_element(xpath: "//android.widget.CheckBox[@checked='true']")
  find_element(xpath: "//android.widget.Button").click
end

Dado("seleciono um desconto para ser resgatado") do
  find_element(xpath: "//android.widget.TextView[@text='Seus pontos']")
  scrool = { start_x: 0.46, start_y: 0.49, offset_x: 0.46, offset_y: 0.80, duration: 2000 }
  Appium::TouchAction.new.swipe(scrool).perform
  descontos = find_elements(xpath: "//android.widget.CheckBox[@clickable='true']")
  descontos[1].click
end

Dado("faço o swipe para ir para tela de confirmação dos pontos") do
  swipe = { start_x: 276, start_y: 1826, end_x: 467, end_y: 1826, duration: 2000 }
  Appium::TouchAction.new.swipe(swipe).perform
end
