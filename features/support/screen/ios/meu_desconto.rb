# encoding: UTF-8
class MeuDescontoScreenIos
  def btn_login
    find_element(xpath: "//android.widget.TextView[@text='Login']").click
  end

  def pular
    driver.manage.timeouts.implicit_wait = 2
    begin
      @condicao = find_element(xpath: "//android.widget.TextView[@text='Próximo']").displayed?
    rescue
      @condicao = false
    end
    while @condicao == true
      begin
        @condicao = find_element(xpath: "//android.widget.TextView[@text='Próximo']").displayed?
        find_element(xpath: "//android.widget.TextView[@text='Próximo']").click
      rescue
        @condicao = false
      end
    end
    driver.manage.timeouts.implicit_wait = 30
  end

  def ofertas
    find_element(xpath: "//android.widget.TextView[@text='Selecione os descontos pela categoria desejada:']")
  end
end
