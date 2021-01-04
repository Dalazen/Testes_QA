module Ecommerce
  module Sections
    module Produto
      class ProdutoBox < SitePrism::Section
        element :link, '.prod_title a'
        element :preco_real, '.prod_wine_club_price .prod_price_int'
        element :preco_centavo, '.prod_wine_club_price .prod_price_cen'
        element :quantidade, '.select2-selection__rendered'
        element :btn_adicionar, '.container_btn_add'

        def buyable?
          btn_adicionar if has_btn_adicionar?
        end

        def get_link
          link(wait: 30)
          link[:href]
        end

        def get_preco
          "#{preco_real.text}.#{preco_centavo.text.delete(',')}"
        end

        def get_quantidade
          quantidade(wait: 30)
          quantidade.text
        end

        def adicionar_ao_carrinho
          btn_adicionar.gclick
        end
      end
    end
  end
end
