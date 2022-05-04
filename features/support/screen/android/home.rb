# encoding: UTF-8
class Home
  def mundo_cobasi(opcao)
    case opcao
    when "amigo cobasi"
      find_element(xpath: "//android.widget.TextView[@text='Amigo Cobasi']").click
    when "assinatura"
      find_element(xpath: "//android.widget.TextView[@text='Assinatura']").click
    end
  end

  def selecionar_opcao_menus(opcao)
    case opcao
    when "Mais"
      find_element(accessibility_id: "Mais, tab, 5 of 6").click
    when "Categorias"
      find_element(accessibility_id: "Categorias, tab, 2 of 6").click
    when "Meu desconto"
      find_element(accessibility_id: "Descontos, tab, 3 of 6").click
    when "Favoritos"
      find_element(accessibility_id: "Favoritos, tab, 4 of 6").click
    end
  end

  def realizar_busca(produto)
    find_element(xpath: "//android.widget.TextView[@text='Buscar produtos, marcas e muito mais…']").click
    find_element(xpath: "//android.widget.EditText[@text='Buscar']").send_keys(produto[:nome])
    autocomplete = find_elements(xpath: "//android.widget.TextView[contains(@text, '#{produto[:nome]}')]").sample
    autocomplete.click
  end

  def modal_home_amigo_cobasi
    find_element(xpath: "//android.widget.TextView[@text='Faça sua adesão gratuita aqui']").click
  end
end
