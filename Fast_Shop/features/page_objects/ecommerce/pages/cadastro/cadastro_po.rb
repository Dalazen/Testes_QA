require_relative '../../sections/autenticacao/cadastro.rb'
require_relative '../../sections/dados/endereco.rb'

module Ecommerce
  module Pages
    module Cadastro
      class Cadastro < SitePrism::Page
        set_url '/web/checkout-v2/cadastro'

        section :cad, Ecommerce::Sections::Autenticacao::Cadastro, '.register'
        section :endereco, Ecommerce::Sections::Dados::Endereco, '#pcs'

        element :address, '.form-address'
        element :btn_cad, ".btn-white-green"

        def abrir_cadastro
          btn_cad.gclick
        end

        def edita_end
          endereco.editar
        end

        def exclui_end
          endereco.excluir
        end

        def adiciona_end
          endereco.adicionar
        end

        def end_falso(nome, cep, tel)
          endereco.end_fake(nome, cep, tel)
        end

        def cadastro_falso(cpf,cnpj,nome,data,tel,email,senha,confirma)
          cad.cadastro_fake(cpf,cnpj,nome,data,tel,email,senha,confirma)
        end

        def casa_falsa(cep)
          cad.casa_fake(cep)
        end

        def cadastro_usuario
          cad.cadastro_user
        end

        def cadastro_casa
          cad.cadastro_endereco
        end

      end
    end
  end
end
