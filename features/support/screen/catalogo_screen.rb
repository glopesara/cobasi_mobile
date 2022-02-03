class CatalogoScreen
  def selecionar_produto
    find_element(xpath: "//android.widget.TextView[@text='Ordenar por']")
    catalogo = find_elements(xpath: "//android.widget.ScrollView")
    catalogo[1].click
  end
end
