class CheckoutScreen
  def btn_continuar
    sleep 3
    find_element(xpath: "//android.widget.Button[@text='Continuar']").click
  end

  # def cartao_form
  #   find_element(xpath: "//android.widget.EditText[@resource-id='cardNumber']").send_keys("5441994163718802")
  #   find_element(xpath: "//android.widget.EditText[@resource-id='cardOwnerName']").send_keys("Teste Teste")
  #   find_element(xpath: "//android.widget.EditText[@resource-id='cardOwnerCPF']").send_keys("84885087350")
  #   find_element(xpath: "//android.widget.EditText[@resource-id='cardValidityDate']").send_keys("0322")
  #   find_element(xpath: "//android.widget.EditText[@resource-id='cardVerificationValue']").send_keys("123")
  #   scroll = { start_x: 0.46, start_y: 0.73, offset_x: 0.46, offset_y: 0.37, duration: 2000 }
  #   Appium::TouchAction.new.swipe(scroll).perform
  #   find_element(xpath: "//android.widget.TextView[@text='Continuar para revisão']").click
  # end

  def entrega_btn
    find_element(xpath: "//android.widget.TextView[contains(@text,'Mantenha seus')]")
    scroll("//android.widget.TextView[@text='Continuar para a entrega']")
    clcik_btn_entrega()
  end

  def clcik_btn_entrega
    find_element(xpath: "//android.widget.TextView[@text='Continuar para a entrega']").click
  end

  def selecionar_entrega(frete)
    find_element(xpath: "//android.widget.TextView[contains(@text, 'Subtotal:')]")
    scroll("//android.widget.TextView[contains(@text,'#{frete}')]")
    find_element(xpath: "//android.widget.TextView[contains(@text,'#{frete}')]").click
    scroll("//android.widget.TextView[@text='Ir para pagamento']")
    pagamento_btn()
  end

  def pagamento_btn
    sleep 3
    find_element(xpath: "//android.widget.TextView[@text='Ir para pagamento']").click
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
    scroll("//android.widget.TextView[@text='Continuar para revisão']")
    find_element(xpath: "//android.widget.TextView[@text='Continuar para revisão']").click
  end

  def finalizar_pedido
    find_element(xpath: "//android.widget.TextView[@text='Resumo do pedido']")
    scroll("//android.widget.TextView[@text='Finalizar pedido']")
    find_element(xpath: "//android.widget.TextView[@text='Finalizar pedido']").click
  end

  def scroll(elemento)
    ignorar_timeout()
    @i = 0
    begin
      @condicao = find_element(xpath: elemento).displayed?
    rescue
      @condicao = false
    end
    while @condicao == false
      scroll = { start_x: 0.46, start_y: 900, end_x: 0.46, end_y: 50, duration: 2000 }
      Appium::TouchAction.new.swipe(scroll).perform
      @i += 1

      begin
        @condicao = find_element(xpath: elemento).displayed?
      rescue
        @condicao = false
      end
      if @i == 5
        puts "NÃO FOI POSSIVEL LOCALIZAR O ELEMENTO"
        throw
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
