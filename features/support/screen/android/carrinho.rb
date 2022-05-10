class CarrinhoScreen
  include Scroll

  def finalizar_compra
    find_element(xpath: "//android.widget.TextView[@text='Produtos']")
    scroll("//android.widget.TextView[@text='Finalizar a compra']")
    btn_finalizar()
  end

  def adicionar_cep(cep)
    find_element(xpath: "//android.widget.TextView[@text='Produtos']")
    sleep 2
    endereco = find_elements(xpath: "//android.widget.EditText")
    endereco[1].send_keys(cep)
    find_element(xpath: "//android.widget.TextView[@text='Buscar']").click
    sleep 2
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
