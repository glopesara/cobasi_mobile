class CatalogoScreen
  def selecionar_produto
    # find_element(xpath: "//android.widget.TextView[@text='Ordenar por']")
    catalogo = find_elements(xpath: "//android.widget.ScrollView").sample
    catalogo.click
  end
end
