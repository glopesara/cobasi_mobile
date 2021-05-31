class CarrinhoScreen
  def finalizar_compra
    find_element(xpath: "//android.widget.TextView[@text='Produtos']")
    scrool = { start_x: 0.46, start_y: 0.73, offset_x: 0.46, offset_y: 0.37, duration: 2000 }
    Appium::TouchAction.new.swipe(scrool).perform
    btn_finalizar()
  end

  def desconto_amigo_cobasi
    find_element(xpath: "//android.widget.TextView[@text='Produtos']")
    scrool = { start_x: 0.46, start_y: 0.80, offset_x: 0.46, offset_y: 0.10, duration: 2000 }
    Appium::TouchAction.new.swipe(scrool).perform
    find_element(xpath: "//android.widget.TextView[contains(@text, 'Amigo Cobasi')]")
    #chamar o btn_finalizar quando for para a screnn e exluir o passo de vou para tela de produto
  end

  def btn_finalizar
    find_element(xpath: "//android.widget.Button[@text='Finalizar compra']").click
  end
end
