# encoding: UTF-8

class AmigoCobasiScreenIos
  def selecionar_ponto
    find_element(xpath: "//android.widget.TextView[@text='Seus pontos']")
    scrool = { start_x: 0.46, start_y: 0.53, offset_x: 0.46, offset_y: 0.84, duration: 2000 }
    Appium::TouchAction.new.swipe(scrool).perform
    descontos = find_elements(xpath: "//android.widget.CheckBox[@clickable='true']")
    descontos[0].click
  end

  def aceite_termos
    find_element(xpath: "//android.widget.CheckBox").click
  end

  def realizar_adesao
    find_element(xpath: "//android.widget.CheckBox[@checked='true']")
    find_element(xpath: "//android.widget.Button").click
  end

  def quadro_de_pontos
    return find_element(xpath: "//XCUIElementTypeOther[contains(@name,'Seus pontos')]")
  end
end
