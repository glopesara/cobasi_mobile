class LoginScreenIos
  def selecionar_opcao(opcao)
    case opcao
    when "E-mail e senha"
      find_element(xpath: "//android.widget.TextView[@text='Digite seus dados']").click
    end
  end

  def logar(usuario)
    find_element(xpath: "//XCUIElementTypeStaticText[@name='Acesse sua conta']")
    find_element(xpath: "(//XCUIElementTypeOther[@name='E-mail E-mail E-mail'])[4]/XCUIElementTypeOther[2]/XCUIElementTypeTextField").send_keys(usuario[:email])
    find_element(xpath: "//XCUIElementTypeButton[@name='Return']").click
    find_element(xpath: "//XCUIElementTypeButton[@name='Continuar']").click
    find_element(xpath: "//XCUIElementTypeOther[@name='Esqueci minha senha']")
    find_element(xpath: "(//XCUIElementTypeOther[@name='Senha Senha Senha'])[1]/XCUIElementTypeOther[2]/XCUIElementTypeSecureTextField").send_keys(usuario[:senha])
    find_element(xpath: "//XCUIElementTypeButton[@name='Return']").click
    find_element(xpath: "//XCUIElementTypeButton[@name='Entrar']").click
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
