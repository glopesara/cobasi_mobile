# encoding: UTF-8
class FavoritosScreenIos
  def entrar_na_conta
    find_element(xpath: "//XCUIElementTypeButton[@name='Entrar na conta']").click
  end
end
