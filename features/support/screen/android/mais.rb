class MaisScreen
  def selecionar_opcao(opcao)
    find_element(xpath: "//android.widget.TextView[@text='Notificações']")
    case opcao
    when "Login"
      find_element(xpath: "//android.widget.TextView[@text='Para acessar seus dados']").click
    when "Amigo Cobasi"
      find_element(xpath: "//android.widget.TextView[@text='Amigo Cobasi']").click
    end
  end

  def login_confirmado
    return find_element(xpath: "//android.widget.TextView[@text='Meus dados']")
  end
end
