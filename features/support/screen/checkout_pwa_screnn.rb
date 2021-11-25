class CheckoutPwaScreen
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
    sleep 3
    find_element(xpath: "//android.widget.Button[@text='Continuar']").click
  end

  def dados_pessoais_form
    find_element(xpath: "//android.widget.EditText[@resource-id='firstName']").send_keys(Faker::Name.male_first_name)
    find_element(xpath: "//android.widget.EditText[@resource-id='lastName']").send_keys(Faker::Name.last_name)
    find_element(xpath: "//android.widget.EditText[@resource-id='document']").send_keys(CPF.generate)
    find_element(xpath: "//android.widget.EditText[@resource-id='phone']").send_keys("11966484848")
    find_element(xpath: "//android.widget.Button[@text='Continuar para endereço']").click
  end

  def edereco_form
    find_element(xpath: "//android.widget.EditText[@resource-id='CEP']").send_keys("85030120")
    find_element(xpath: "//android.widget.Button[@text='Buscar']").click
    find_element(xpath: "//android.widget.EditText[@resource-id='number']").send_keys("111")
    find_element(xpath: "//android.widget.EditText[@resource-id='receiverName']").send_keys("teste teste")
    scroll = { start_x: 0.46, start_y: 0.73, offset_x: 0.46, offset_y: 0.37, duration: 2000 }
    Appium::TouchAction.new.swipe(scroll).perform
    find_element(xpath: "//android.widget.Button[@text='Casa']").click
    find_element(xpath: "//android.widget.Button[@text='Adicionar endereço']").click
    find_element(xpath: "//android.widget.TextView[@text='O novo endereço foi incluído com sucesso!']")
    find_element(xpath: "//android.widget.Button[@text='Ok']").click
  end

  def cartao_form
    find_element(xpath: "//android.widget.EditText[@resource-id='cardNumber']").send_keys("5441994163718802")
    find_element(xpath: "//android.widget.EditText[@resource-id='cardOwnerName']").send_keys("Teste Teste")
    find_element(xpath: "//android.widget.EditText[@resource-id='cardOwnerCPF']").send_keys("84885087350")
    find_element(xpath: "//android.widget.EditText[@resource-id='cardValidityDate']").send_keys("0322")
    find_element(xpath: "//android.widget.EditText[@resource-id='cardVerificationValue']").send_keys("123")
    scroll = { start_x: 0.46, start_y: 0.73, offset_x: 0.46, offset_y: 0.37, duration: 2000 }
    Appium::TouchAction.new.swipe(scroll).perform
    find_element(xpath: "//android.widget.Button[@text='Continuar para revisão']").click
  end

  def entrega_btn
    find_element(xpath: "//android.widget.TextView[contains(@text,'Mantenha seus')]")
    scroll("//android.widget.Button[@text='Continuar para entrega']")
    clcik_btn_entrega()
  end

  def clcik_btn_entrega
    find_element(xpath: "//android.widget.Button[@text='Continuar para entrega']").click
  end

  def selecionar_entrega(frete)
    find_element(xpath: "//android.widget.TextView[contains(@text, 'Subtotal:')]")
    scroll("//android.widget.TextView[contains(@text,'#{frete}')]")
    find_element(xpath: "//android.widget.TextView[contains(@text,'#{frete}')]").click
    scroll("//android.widget.Button[@text='Ir para pagamento']")
    pagamento_btn()
  end

  def pagamento_btn
    sleep 3
    find_element(xpath: "//android.widget.Button[@text='Ir para pagamento']").click
  end

  def btn_adc_cartao
    find_element(xpath: "//android.widget.TextView[@text='Cartão de crédito']").click
  end

  def selecionar_dia(data)
    #codigo a baixo usar somente se for receber o dia no agendamento.
    #fazer um refatoramento utilizando o break para não ficar em loop caso não ache a data
    @dia = find_element(xpath: "//android.widget.Button[contains(@text,'#{data}')]").enabled?
    if @dia == false
      while @dia == false
        find_element(xpath: "//android.widget.Button[@text='›']").click
        condicao = find_element(xpath: "//android.widget.Button[contains(@text,'#{data}')]").enabled?
        if condicao == true
          @dia = true
          find_element(xpath: "//android.widget.Button[contains(@text,'#{data}')]").click
        end
      end
    else
      find_element(xpath: "//android.widget.Button[contains(@text,'#{data}')]").click
    end
  end

  def pagamento_boleto
    find_element(xpath: "//android.widget.TextView[@text='Boleto Bancário']").click
    scroll("//android.widget.Button[@text='Continuar para revisão']")
    find_element(xpath: "//android.widget.Button[@text='Continuar para revisão']").click
  end

  def finalizar_pedido
    find_element(xpath: "//android.widget.TextView[@text='Resumo do pedido']")
    scroll = { start_x: 0.46, start_y: 0.89, offset_x: 0.46, offset_y: 0.13, duration: 2000 }
    Appium::TouchAction.new.swipe(scroll).perform
    find_element(xpath: "//android.widget.Button[@text='Finalizar pedido']").click
  end

  def scroll(elemento)
    ignorar_timeout()
    begin
      @condicao = find_element(xpath: elemento).displayed?
    rescue
      @condicao = false
    end
    while @condicao == false
      scroll = { start_x: 0.46, start_y: 1233, end_x: 0.46, end_y: 200, duration: 2000 }
      Appium::TouchAction.new.swipe(scroll).perform
      begin
        @condicao = find_element(xpath: elemento).displayed?
      rescue
        @condicao = false
      end
    end
    voltar_timeout()
  end

  def ignorar_timeout
    driver.manage.timeouts.implicit_wait = 0
  end

  def voltar_timeout
    driver.manage.timeouts.implicit_wait = 30
  end
end
