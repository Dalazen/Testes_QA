require_relative '../produto/produto_cart.rb'

module Ecommerce
  module Sections
    module Headers
      class Carrinho < SitePrism::Section
        sections :produtos, Ecommerce::Sections::Produto::ProdutoCart, '.cart_wrapper_prod'
      end
    end
  end
end
