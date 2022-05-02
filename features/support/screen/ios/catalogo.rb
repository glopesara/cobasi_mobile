class CatalogoScreenIos
  def selecionar_produto
    # find_element(xpath: "//android.widget.TextView[@text='Ordenar por']")
    catalogo = find_elements(xpath: "//XCUIElementTypeOther[contains(@name, 'R$')]")
    catalogo[0].click
  end
end
