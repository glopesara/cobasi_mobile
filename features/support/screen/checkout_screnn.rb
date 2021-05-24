class CheckoutScreen
  def adicionar_email(email = "")
    if email.length > 0
      find_element(xpath: "//android.widget.EditText").send_keys(email)
      btn_continuar()
    else
      find_element(xpath: "//android.widget.EditText").send_keys(Faker::Internet.email)
      btn_continuar()
    end
  end

  def btn_continuar
    find_element(xpath: "//android.widget.Button[@text='Continuar']").click
  end

  def dados_pessoais_form
    find_element(xpath: "//android.widget.EditText[@resource-id='firstName']").send_keys(Faker::Name.male_first_name)
    find_element(xpath: "//android.widget.EditText[@resource-id='lastName']").send_keys(Faker::Name.last_name)
    find_element(xpath: "//android.widget.EditText[@resource-id='document']").send_keys(CPF.generate)
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

  def cartao_form
    find_element(xpath: "//android.widget.EditText[@resource-id='cardNumber']").send_keys("5441994163718802")
    find_element(xpath: "//android.widget.EditText[@resource-id='cardVerificationValue']").send_keys("123")
    find_element(xpath: "//android.widget.EditText[@resource-id='cardOwnerName']").send_keys("Teste Teste")
    find_element(xpath: "//android.widget.EditText[@resource-id='cardOwnerCPF']").send_keys("84885087350")
    find_element(xpath: "//android.widget.EditText[@resource-id='cardValidityDate']").send_keys("0322")
    scrool = { start_x: 0.46, start_y: 0.73, offset_x: 0.46, offset_y: 0.37, duration: 2000 }
    Appium::TouchAction.new.swipe(scrool).perform
    find_element(xpath: "//android.widget.Button[@text='Continuar para revisão']").click
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

  def btn_adc_cartao
    find_element(xpath: "//android.view.View[@content-desc='Adicionar cartão de crédito']").click
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
