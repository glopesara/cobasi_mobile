class MaisScreen
  def selecionar_opcao(opcao)
    case opcao
    when "Login"
      find_element(xpath: "//android.widget.TextView[@text='Para acessar seus dados']").click
    end
  end
end
