class CheckoutScreen
  def adicionar_email
    find_element(xpath: "//android.widget.EditText").send_keys("testes@teestes.com.br")
    find_element(xpath: "//android.widget.Button[@text='Continuar']").click
  end

  def dados_pessoais_form
    find_element(xpath: "//android.widget.EditText[@resource-id='firstName']").send_keys("teste")
    find_element(xpath: "//android.widget.EditText[@resource-id='lastName']").send_keys("teste")
    find_element(xpath: "//android.widget.EditText[@resource-id='document']").send_keys("946.543.290-30")
    find_element(xpath: "//android.widget.EditText[@resource-id='phone']").send_keys("11966484848")
    find_element(xpath: "//android.widget.Button[@text='Salvar']").click
  end

  def edereco_form
    find_element(xpath: "//android.widget.EditText[@resource-id='CEP']").send_keys("85030120")
    find_element(xpath: "//android.widget.Button[@text='Buscar']").click
    sleep 1
    find_element(xpath: "//android.widget.EditText[@resource-id='number']").send_keys("111")
    find_element(xpath: "//android.widget.EditText[@resource-id='receiverName']").send_keys("teste teste")
    find_element(xpath: "//android.widget.Button[@text='Casa']").click
    scrool = { start_x: 0.46, start_y: 0.73, offset_x: 0.46, offset_y: 0.37, duration: 2000 }
    Appium::TouchAction.new.swipe(scrool).perform
    find_element(xpath: "//android.widget.Button[@text='Adicionar endereço']").click
    sleep 3
    find_element(xpath: "//android.widget.Button[@text='Ok']").click
  end

  def entrega_btn
    find_element(xpath: "//android.widget.Button[@text='Ir para entrega']").click
  end

  def selecionar_entrega(frete)
    case frete
    when "Economica"
      find_element(xpath: "//android.widget.TextView[@text='Economica']").click
      pagamento_btn()
    end
  end

  def pagamento_btn
    sleep 3
    find_element(xpath: "//android.widget.Button[@text='Ir para pagamento']").click
  end

  def pagamento_boleto
    find_element(xpath: "//android.widget.TextView[@text='Boleto Bancário']").click
    find_element(xpath: "//android.widget.Button[@text='Continuar para revisão']").click
  end

  def finalizar_pedido
    find_element(xpath: "//android.view.View[@text='Resumo do pedido']")
    scrool = { start_x: 0.46, start_y: 0.89, offset_x: 0.46, offset_y: 0.13, duration: 2000 }
    Appium::TouchAction.new.swipe(scrool).perform
    find_element(xpath: "//android.widget.Button[@text='Finalizar pedido']").click
  end
end
