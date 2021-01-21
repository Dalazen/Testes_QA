module Ecommerce
  module Sections
    module Produto
      class Produto < SitePrism::Section
        element :volts, '.volts', match: :first
        element :carrinho, '.btn.btn-type-link'
        element :comprar, '.btn.btn-buy-now'

        def ver_volts
          if has_volts?
            volts.gclick
          end
        end

        def adc_carrinho
          carrinho.gclick
        end

        def compra
          comprar.gclick
        end

      end
    end
  end
end
