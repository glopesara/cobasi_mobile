class LoginScreen
  def selecionar_opcao(opcao)
    case opcao
    when "E-mail e senha"
      find_element(xpath: "//android.widget.TextView[@text='Digite seus dados']").click
    end
  end

  def logar(usuario)
    find_element(xpath: "//android.widget.TextView[@text='Acesse sua conta']")
    find_element(xpath: "//android.widget.EditText").send_keys(usuario[:email])
    puts usuario[:email]
    find_element(xpath: "//android.widget.TextView[@text='Continuar']").click
    sleep 2
    find_element(xpath: "//android.widget.EditText").send_keys(usuario[:senha])
    puts usuario[:senha]
    find_element(xpath: "//android.widget.TextView[@text='Entrar']").click
    sleep 3
  end

  def logar_pwa(usuario)
    find_element(xpath: "//android.widget.EditText[@resource-id='email']").send_keys(usuario[:email])
    find_element(xpath: "//android.widget.EditText[@resource-id='password']").send_keys(usuario[:senha])
    find_element(xpath: "//android.widget.Button[@text='Entrar']").click
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
