class ProdutoScreen
  include Scroll

  def botao_comprar
    find_element(xpath: "//android.widget.TextView[@text='Destaque']")
    botao_comprar = "//android.widget.TextView[@text='Comprar']"
    scroll(botao_comprar)
    find_element(xpath: botao_comprar).click
  end

  def alerta_carrinho
    find_element(xpath: "//android.widget.TextView[@text='VER NO CARRINHO']").click
  end
end
