class ProdutoScreen
  def botao_comprar
    find_element(xpath: "//android.widget.TextView[@text='Destaque']")
    botao_comprar = "//android.widget.TextView[@text='Comprar']"
    scroll(botao_comprar)
    find_element(xpath: botao_comprar).click
  end

  def alerta_carrinho
    find_element(xpath: "//android.widget.TextView[@text='VER NO CARRINHO']").click
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
      scroll = { start_x: 0.46, start_y: 1233, end_x: 0.46, end_y: 200, duration: 2000 }
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
