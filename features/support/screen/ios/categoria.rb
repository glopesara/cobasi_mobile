# encoding: UTF-8
class CategoriaScreenIos
  def slecionar_categoria(categoria)
    find_element(xpath: "//android.widget.TextView[@text='#{categoria}']").click
  end

  def slecionar_categoria_detalhe(categoria_datalhes)
    find_element(xpath: "//android.widget.TextView[@text='#{categoria_datalhes}']").click
  end

  def selecionar_servico(servico)
    find_element(xpath: "//android.widget.TextView[@text='#{servico}']").click
  end
end
