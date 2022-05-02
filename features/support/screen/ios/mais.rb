# encoding: UTF-8
class MaisScreenIos
  include Scroll

  def selecionar_opcao(opcao)
    find_element(accessibility_id: "󰂚 Notificações Mensagens pra você 󰅂")
    case opcao
    when "Login"
      find_element(accessibility_id: "󰀉 Entre ou cadastre-se Para acessar seus dados 󰅂").click
    when "Amigo Cobasi"
      find_element(accessibility_id: "Amigo Cobasi Ganhe pontos nas suas compras 󰅂").click
    end
  end

  def login_confirmado
    find_element(accessibility_id: "Minha conta")
  end
end
