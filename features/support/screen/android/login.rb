class LoginScreen
  def selecionar_opcao(opcao)
    case opcao
    when "E-mail e senha"
      find_element(xpath: "//android.widget.TextView[@text='Digite seus dados']").click
    end
  end

  def logar(usuario)
    find_element(xpath: "//android.widget.TextView[@text='Acesse sua conta']")
    sleep 2
    find_element(xpath: "//android.widget.EditText").send_keys(usuario[:email])
    sleep 2
    find_element(xpath: "//android.widget.TextView[@text='Continuar']").click
    find_element(xpath: "//android.widget.TextView[@text='Esqueci minha senha']")
    find_element(xpath: "//android.widget.EditText").send_keys(usuario[:senha])
    sleep 2
    find_element(xpath: "//android.widget.TextView[@text='Entrar']").click
    sleep 2
  end

  def login_checkout(usuario)
    find_element(xpath: "//android.widget.TextView[@text='Acesse sua conta']")
    imput_email = find_elements(xpath: "//android.widget.EditText")
    imput_email[2].send_keys(usuario[:email])
    sleep 2
    find_element(xpath: "//android.widget.TextView[@text='Continuar']").click
    sleep 2
    imput_senha = find_elements(xpath: "//android.widget.EditText")
    imput_senha[2].send_keys(usuario[:senha])
    sleep 2
    find_element(xpath: "//android.widget.TextView[@text='Entrar']").click
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