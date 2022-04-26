# encoding: UTF-8
class FavoritosScreen
  def entrar_na_conta
    find_element(xpath: "//android.widget.TextView[@text='Entrar na conta']").click
  end
end
