class LoginScreen
  def selecionar_opcao(opcao)
    case opcao
    when "E-mail e senha"
      find_element(xpath: "//android.widget.TextView[@text='Digite seus dados']").click
    end
  end

  def logar(usuario)
    find_element(xpath: "//android.widget.EditText").send_keys(usuario[:email])
    find_element(xpath: "//android.widget.TextView[@text='Continuar']").click
    find_element(xpath: "//android.widget.EditText").send_keys(usuario[:senha])
    find_element(xpath: "//android.widget.TextView[@text='Entrar']").click
    # find_element(xpath: "//android.widget.TextView[@text='Novos serviços para seu pet']")
    sleep 3
  end

  # def tentativa_login(usuario)
  #   find_element(xpath: "//android.widget.EditText").send_keys(usuario[:email])
  #   find_element(xpath: "//android.widget.TextView[@text='Continuar']").click
  #   if (usuario[:senha].length > 0)
  #     find_element(xpath: "//android.widget.EditText").send_keys(usuario[:senha])
  #     find_element(xpath: "//android.widget.TextView[@text='Entrar']").click
  #   end
  # end
end
