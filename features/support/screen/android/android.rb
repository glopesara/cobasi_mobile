# encoding: UTF-8
require_relative "amigo_cobasi"
require_relative "carrinho"
require_relative "catalogo"
require_relative "checkout"
require_relative "home"
require_relative "login"
require_relative "mais"
require_relative "pdp"
require_relative "meu_desconto"
require_relative "favoritos"
require_relative "categoria"
require_relative "compra_confirmada"

class AndroidScreens
  attr_accessor :amigo_cobasi, :carrinho, :catalogo, :checkout, :home, :login,
                :mais, :pdp, :meu_desconto, :favoritos, :categoria, :compra_confirmada

  def initialize
    @amigo_cobasi = AmigoCobasiScreen.new
    @carrinho = CarrinhoScreen.new
    @catalogo = CatalogoScreen.new
    @checkout = CheckoutScreen.new
    @home = Home.new
    @login = LoginScreen.new
    @mais = MaisScreen.new
    @pdp = ProdutoScreen.new
    @meu_desconto = MeuDescontoScreen.new
    @favoritos = FavoritosScreen.new
    @categoria = CategoriaScreen.new
    @compra_confirmada = CompraConfirmadaScreen.new
  end
end
