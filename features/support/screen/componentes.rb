class Navegador
  def selecionar_opcao_menus(opcao)
    case opcao
    when "Mais"
      find_element(xpath: "//android.widget.Button[@content-desc='Mais, tab, 5 of 5']").click
    when "Categorias"
      find_element(xpath: "//android.widget.Button[@content-desc='Categorias, tab, 2 of 5']").click
    when "Meu desconto"
      find_element(xpath: "//android.widget.Button[@content-desc='Descontos, tab, 3 of 5']/android.widget.TextView[1]").click
    end
  end

  def realizar_busca(produto)
    find_element(xpath: "//android.widget.TextView[@bounds='[819,126][896,204]']").click
    find_element(xpath: "//android.widget.EditText[@text='Buscar']").send_keys(produto[:nome])
    autocomplete = find_elements(xpath: "//android.widget.TextView[contains(@text, '#{produto[:nome]}')]").sample
    autocomplete.click
  end
end

class MundoCobasi
  def selecionar_opcao(opcao)
    case opcao
    when "amigo cobasi"
      find_element(xpath: "//android.widget.TextView[@text='Amigo Cobasi']").click
    when "assinatura"
      find_element(xpath: "//android.widget.TextView[@text='Assinatura']").click
    end
  end
end

class ModalAmigoCobasi
  def modal_home
    find_element(xpath: "//android.widget.TextView[@text='Faça sua adesão gratuita aqui']").click
  end

  def aceite_termos
    find_element(xpath: "//android.widget.CheckBox").click
  end

  def realizar_adesao
    find_element(xpath: "//android.widget.CheckBox[@checked='true']")
    find_element(xpath: "//android.widget.Button").click
  end
end
