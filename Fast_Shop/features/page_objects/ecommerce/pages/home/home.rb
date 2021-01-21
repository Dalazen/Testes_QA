require_relative '../../sections/headers/main_header.rb'
require_relative '../../sections/produto/produto.rb'
require_relative '../../sections/dados/metodo_pag.rb'

module Ecommerce
  module Pages
    module Home
      class Home < SitePrism::Page
        set_url '/'

        section :main_header, Ecommerce::Sections::Headers::MainHeader, '#appHeader'
        section :prod_page, Ecommerce::Sections::Produto::Produto, '.view-second-part .content'
        section :pagamento, Ecommerce::Sections::Dados::Pagamento, '.content'

        element :aviso_compra, '.modal-body'
        element :cont_compra, '.btn.btn-green'
        element :cookie, '.onetrust-lg'
        element :meu_end, '[href$="endereco"]'
        element :msg_compra, '.col-md-12.col-12 .title', match: :first
        element :nota, '.notification p'
        element :vitrine, '.grid-image', match: :first

        def abre_categoria
          main_header.abrir_menu
        end

        def abre_conta
          main_header.abrir_conta
        end

        def abrir_login
          main_header.login
        end

        def acessa_end
          meu_end(wait:2)
          meu_end.gclick
        end

        def continua
          (0..4).each do
            if has_cont_compra?
              cont_compra.gclick
            end
          end
        end

        def faz_compra
          main_header.buscar
          prod_page.ver_volts
          prod_page.compra
          continua
        end

        def fechar_cookie
          cookie(wait:2)
          cookie.gclick
        end

        def insere_cartao
          pagamento.input_card
          cont_compra.gclick
          pagamento.input_seg_card
          cont_compra(wait:5)
          cont_compra.gclick
        end

        def seleciona_boleto
          pagamento.select_boleto
          cont_compra.gclick
          cont_compra.gclick
        end

        def seleciona_cartao
          pagamento.select_card
          cont_compra.gclick
        end

        def seleciona_produto
          vitrine(wait:5)
          vitrine.gclick
          prod_page.ver_volts
          prod_page.adc_carrinho
        end

      end
    end
  end
end
