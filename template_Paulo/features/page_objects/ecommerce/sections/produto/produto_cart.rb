module Ecommerce
  module Sections
    module Produto
      class ProdutoCart < SitePrism::Section
        element :link, '.s90 a'
        element :preco, '.cart_prod_price'
        element :quantidade, '.select2-selection__rendered'

        def get_link
          link[:href]
        end

        def get_preco
          preco.text.delete('R$ ').tr(',','.')
        end

        def get_quantidade
          quantidade.text
        end
      end
    end
  end
end
