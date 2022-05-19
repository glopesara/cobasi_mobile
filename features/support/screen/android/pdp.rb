# encoding: UTF-8
class ProdutoScreen
  include Scroll

  def botao_comprar
    find_element(xpath: "//android.widget.TextView[@text='Destaque']")
    botao_comprar = "//android.widget.TextView[@text='Comprar']"
    scroll_android(botao_comprar)
    find_element(xpath: botao_comprar).click
  end

  def favoritar
    find_element(xpath: "//android.widget.TextView[@text='']").click
  end

  def alerta_carrinho
    find_element(xpath: "//android.widget.TextView[@text='VER NO CARRINHO']").click
  end

  def cod_produto
    find_element(xpath: "//android.widget.TextView[contains(@text,'Código')]")
  end
end
