class CatalogoScreen
  def selecionar_produto
    catalogo = find_elements(xpath: "//android.widget.ScrollView[@text='']").sample
    catalogo.click
  end
end
