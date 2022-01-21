class CatalogoScreen
  def selecionar_produto
    catalogo = find_elements(xpath: "//android.view.ViewGroup[@bounds='[0,264][720,1182]']").sample
    catalogo.click
  end
end
