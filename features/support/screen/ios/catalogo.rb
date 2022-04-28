class CatalogoScreenIos
  def selecionar_produto
    # find_element(xpath: "//android.widget.TextView[@text='Ordenar por']")
    catalogo = find_elements(xpath: "//XCUIElementTypeOther[contains(@name, 'R$')]").sample
    catalogo.click
  end
end
