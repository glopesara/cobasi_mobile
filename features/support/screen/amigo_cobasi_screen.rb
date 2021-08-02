class AmigoCobasiScreen
  def selecionar_ponto
    find_element(xpath: "//android.widget.TextView[@text='Seus pontos']")
    scrool = { start_x: 0.46, start_y: 0.53, offset_x: 0.46, offset_y: 0.84, duration: 2000 }
    Appium::TouchAction.new.swipe(scrool).perform
    descontos = find_elements(xpath: "//android.widget.CheckBox[@clickable='true']")
    descontos[0].click
  end

  def swipe
    swipe = { start_x: 276, start_y: 1560, end_x: 467, end_y: 1560, duration: 2000 }
    Appium::TouchAction.new.swipe(swipe).perform
  end
end
