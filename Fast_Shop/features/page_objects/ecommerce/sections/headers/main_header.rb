module Ecommerce
  module Sections
    module Headers
      class MainHeader < SitePrism::Section

        element :btn_user, "#redirect-login"
        element :busca, '#search-box-id'
        element :busca_result, '.search-result', match: :first
        element :carrinho, '.icon-cart-new'
        element :cat, '#desk-cat-22004'
        element :conta, '.user-icon'
        element :menu, '.menu-departament-dropdown'

        def abrir_menu
          menu.hover
          cat.gclick
        end

        def abrir_conta
          conta(wait:6)
          conta.gclick
        end

        def abrir_carrinho
          carrinho(wait:2)
          carrinho.gclick
        end

        def buscar
          produto = "Cafeteira Nespresso Essenza Mini Vermelha com Aero3"
          busca.gset produto
          busca_result.gclick
        end

        def login
          btn_user.gclick
        end

      end
    end
  end
end
