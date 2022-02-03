class CarrinhoScreen
  def finalizar_compra
    find_element(xpath: "//android.widget.TextView[@text='Frete e prazo']")
    # scroll = { start_x: 0.46, start_y: 0.73, offset_x: 0.46, offset_y: 0.37, duration: 2000 }
    # Appium::TouchAction.new.swipe(scroll).perform
    scroll("//android.widget.TextView[@text='Finalizar a compra']")
    btn_finalizar()
  end

  def btn_finalizar
    find_element(xpath: "//android.widget.TextView[@text='Finalizar a compra']").click
  end

  def desconto_amigo_cobasi
    #fazer o refatoramento da validação do desconto aplicado
    find_element(xpath: "//android.widget.TextView[@text='Produtos']")
    scroll("//android.widget.Button[@text='Finalizar compra']")
    find_element(xpath: "//android.widget.TextView[contains(@text, 'Amigo Cobasi')]")
    #chamar o btn_finalizar quando for para a screnn e exluir o passo de vou para tela de produto
  end

  def selecionar_frete(frete)
    sleep 7
    find_element(xpath: "//android.widget.TextView[@text='Produtos']")
    # scroll("//android.widget.EditText")
    scroll = { start_x: 0.46, start_y: 600, end_x: 0.46, end_y: 200, duration: 2000 }
    Appium::TouchAction.new.swipe(scroll).perform
    cep = find_elements(xpath: "//android.widget.EditText")
    cep[1].send_keys(frete)
    sleep 3
    find_element(xpath: "//android.widget.TextView[@text='Buscar']").click
    sleep 3
  end

  def scroll(elemento)
    ignorar_timeout()
    begin
      @condicao = find_element(xpath: elemento).displayed?
    rescue
      @condicao = false
    end
    while @condicao == false
      scroll = { start_x: 0.46, start_y: 800, end_x: 0.46, end_y: 200, duration: 2000 }
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
