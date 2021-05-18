class ProdutoScreen
  def botao_comprar
    find_element(xpath: "//android.widget.Button[@text='Comprar']").click
  end

  def alerta_carrinho
    find_element(xpath: "//android.view.View[@text='VER CARRINHO']").click
  end
end
