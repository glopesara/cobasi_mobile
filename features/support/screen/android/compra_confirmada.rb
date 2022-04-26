# encoding: UTF-8
class CompraConfirmadaScreen
  def nr_pedido
    find_element(xpath: "//android.widget.TextView[contains(@text, 'Pedido Nº')]")
  end
end
