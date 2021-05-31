Before do
  @navegador = Navegador.new
  @mais = MaisScreen.new
  @login = LoginScreen.new
  @catalogo = CatalogoScreen.new
  @tela_produto = ProdutoScreen.new
  @tela_carrinho = CarrinhoScreen.new
  @checkout = CheckoutScreen.new
  @amigo_cobasi = AmigoCobasiScreen.new
  @modal_amigo_cobasi = ModalAmigoCobasi.new
  #sobe o servidor do appium
  driver.start_driver
  #timeout de 10 segundos
  driver.manage.timeouts.implicit_wait = 30
end

After do |scenario|
  #chama o driver do appium e tira uma foto
  binary_shot = driver.screenshot_as(:base64)

  #diretorio para salvar a evidencia
  temp_shot = "logs/temp_shot.png"

  #transformando o arquivo binario da foto para arquivo
  File.open(temp_shot, "wb") do |f|
    f.write(Base64.decode64(binary_shot).force_encoding("UTF-8"))
  end

  Allure.add_attachment(
    name: "screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
  #fechar o drive
  driver.quit_driver
end
