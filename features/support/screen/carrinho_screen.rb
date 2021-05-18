class CarrinhoScreen
  def finalizar_compra
    find_element(xpath: "//android.widget.TextView[@text='Produtos']")
    scrool = { start_x: 0.46, start_y: 0.73, offset_x: 0.46, offset_y: 0.37, duration: 2000 }
    Appium::TouchAction.new.swipe(scrool).perform
    find_element(xpath: "//android.widget.Button[@text='Finalizar compra']").click
  end
end
