class AmigoCobasiScreen
  def selecionar_ponto
    find_element(xpath: "//android.widget.TextView[@text='Seus pontos']")
    scrool = { start_x: 0.46, start_y: 0.49, offset_x: 0.46, offset_y: 0.80, duration: 2000 }
    Appium::TouchAction.new.swipe(scrool).perform
    descontos = find_elements(xpath: "//android.widget.CheckBox[@clickable='true']")
    descontos[1].click
  end

  def swipe
    swipe = { start_x: 276, start_y: 1826, end_x: 467, end_y: 1826, duration: 2000 }
    Appium::TouchAction.new.swipe(swipe).perform
  end
end
