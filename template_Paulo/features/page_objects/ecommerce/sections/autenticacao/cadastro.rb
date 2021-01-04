module Ecommerce
  module Sections
    module Autenticacao
      class Cadastro < SitePrism::Section
        element :input_cpf, '#cpf'

        def cadastrar
          binding.pry
          usuario = Factory.user
          input_cpf.gset usuario[:cpf]
        end
      end
    end
  end
end
