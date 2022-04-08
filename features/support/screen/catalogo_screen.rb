class CatalogoScreen
  def selecionar_produto
    # find_element(xpath: "//android.widget.TextView[@text='Ordenar por']")
    catalogo = find_elements(xpath: "//android.widget.TextView[contains(@text,'R$')]").sample
    catalogo.click
  end
end