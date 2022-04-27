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

class IOSScreens
  attr_accessor :amigo_cobasi, :carrinho, :catalogo, :checkout, :home, :login,
                :mais, :pdp, :meu_desconto, :favoritos, :categoria, :compra_confirmada

  def initialize
    @amigo_cobasi = AmigoCobasiScreenIos.new
    @carrinho = CarrinhoScreenIos.new
    @catalogo = CatalogoScreenIos.new
    @checkout = CheckoutScreenIos.new
    @home = HomeIos.new
    @login = LoginScreenIos.new
    @mais = MaisScreenIos.new
    @pdp = ProdutoScreenIos.new
    @meu_desconto = MeuDescontoScreenIos.new
    @favoritos = FavoritosScreenIos.new
    @categoria = CategoriaScreenIos.new
    @compra_confirmada = CompraConfirmadaScreenIos.new
  end
end
