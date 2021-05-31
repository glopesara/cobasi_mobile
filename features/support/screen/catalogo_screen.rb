class CatalogoScreen
  def selecionar_produto
    catalogo = find_elements(xpath: "//android.widget.ScrollView[@bounds='[0,386][1080,2069]']").sample
    catalogo.click
  end
end
