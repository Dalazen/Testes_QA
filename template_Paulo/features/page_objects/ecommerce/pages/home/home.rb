require_relative '../../sections/headers/main_header.rb'
require_relative '../../sections/produto/produto_box.rb'
require_relative '../../sections/headers/carrinho.rb'

module Ecommerce
  module Pages
    module Home
      class Home < SitePrism::Page
        set_url '/'

        section :main_header, Ecommerce::Sections::Headers::MainHeader, '.navbar_fixed_top'
        # section :cadastro, Ecommerce::Sections::Autenticacao::Cadastro, '#mdl_new_account'
        sections :produtos, Ecommerce::Sections::Produto::ProdutoBox, '.product_grid'

        section :carrinho, Ecommerce::Sections::Headers::Carrinho, '.cart_content'

        element :vitrine, '.product_detail', match: :first
        element :popup, '#pushOptIn'

        def first_buyable_index
          produtos.index { |p| p.buyable? }.to_i
        end
      end
    end
  end
end
