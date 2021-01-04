module Ecommerce
  module Sections
    module Headers
      class MainHeader < SitePrism::Section
        element :btn_cadastrar, '#registerUserModal'
        element :btn_carrinho, '.icon-cx_vinho'

        def abrir_cadastro
          btn_cadastrar.gclick
        end

        def abrir_carrinho
          btn_carrinho.hover
        end
      end
    end
  end
end
