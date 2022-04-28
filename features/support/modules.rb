module Scroll
  def scroll(elemento)
    ignorar_timeout()
    @i = 0
    begin
      @condicao = find_element(xpath: elemento).displayed?
    rescue
      @condicao = false
    end
    while @condicao == false
      scroll = { start_x: 0.46, start_y: 700, end_x: 0.46, end_y: 200, duration: 2000 }
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
