class LoginScreen
  def selecionar_opcao(opcao)
    case opcao
    when "E-mail e senha"
      find_element(xpath: "//android.widget.TextView[@text='Digite seus dados']").click
    end
  end

  def logar(usuario)
    find_element(xpath: "//android.widget.EditText[@resource-id='email']").send_keys(usuario[:email])
    find_element(xpath: "//android.widget.EditText[@resource-id='password']").send_keys(usuario[:senha])
    find_element(xpath: "//android.widget.Button[@text='Entrar']").click
    # find_element(xpath: "//android.widget.TextView[@text='Novos serviços para seu pet']")
    sleep 3
  end

  def tentativa_login(usuario)
    find_element(xpath: "//android.widget.EditText[@resource-id='email']").send_keys(usuario[:email])
    find_element(xpath: "//android.widget.EditText[@resource-id='password']").send_keys(usuario[:senha])
    find_element(xpath: "//android.widget.Button[@text='Entrar']").click
  end
end
