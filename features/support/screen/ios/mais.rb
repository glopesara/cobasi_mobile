# encoding: UTF-8
class MaisScreenIos
  def selecionar_opcao(opcao)
    case opcao
    when "Login"
      find_element(xpath: "//XCUIElementTypeOther[@name='󰀉 Entre ou cadastre-se Para acessar seus dados 󰅂']").click
    when "Amigo Cobasi"
      sleep 1
      find_element(xpath: "//android.widget.TextView[@text='Amigo Cobasi']").click
    end
  end

  def login_confirmado
    return find_element(xpath: "//XCUIElementTypeStaticText[@name='Minha conta']")
  end
end
