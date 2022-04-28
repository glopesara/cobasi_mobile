# encoding: UTF-8
class MaisScreenIos
  include Scroll

  def selecionar_opcao(opcao)
    case opcao
    when "Login"
      find_element(xpath: "//XCUIElementTypeOther[@name='󰀉 Entre ou cadastre-se Para acessar seus dados 󰅂']").click
    when "Amigo Cobasi"
      sleep 1
      scroll("//XCUIElementTypeOther[@name='󰵰 Atendimento 󰅂']")
      find_element(xpath: "//XCUIElementTypeOther[@name='Amigo Cobasi Ganhe pontos nas suas compras 󰅂']").click
    end
  end

  def login_confirmado
    return find_element(xpath: "//XCUIElementTypeStaticText[@name='Minha conta']")
  end
end
