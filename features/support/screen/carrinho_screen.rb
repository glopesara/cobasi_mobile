class CarrinhoScreen
  include Scroll

  def finalizar_compra
    find_element(xpath: "//android.widget.TextView[@text='Produtos']")
    # scroll = { start_x: 0.46, start_y: 0.73, offset_x: 0.46, offset_y: 0.37, duration: 2000 }
    # Appium::TouchAction.new.swipe(scroll).perform
    scroll("//android.widget.TextView[@text='Finalizar a compra']")
    btn_finalizar()
  end

  def btn_finalizar
    find_element(xpath: "//android.widget.TextView[@text='Finalizar a compra']").click
  end

  def desconto_amigo_cobasi
    #fazer o refatoramento da validação do desconto aplicado
    find_element(xpath: "//android.widget.TextView[@text='Produtos']")
    scroll("//android.widget.Button[@text='Finalizar compra']")
    find_element(xpath: "//android.widget.TextView[contains(@text, 'Amigo Cobasi')]")
    #chamar o btn_finalizar quando for para a screnn e exluir o passo de vou para tela de produto
  end
end
