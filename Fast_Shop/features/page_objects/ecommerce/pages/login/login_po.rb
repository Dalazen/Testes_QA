require_relative '../../sections/autenticacao/login.rb'

module Ecommerce
  module Pages
    module Login
      class Login < SitePrism::Page
        set_url '/web/checkout-v2/login'

        section :acesso, Ecommerce::Sections::Autenticacao::Login, '.register'

        element :alerta, ".divForm"
        element :home_page, ".user-name"
        element :senha_alerta, ".register"

        def logar
          acesso.acessa_login
        end

        def esqueci_senha
          acesso.red_senha
        end

        def seleciona_email
          acesso.select_email
        end

        def fazer_login
          acesso.faz_login
        end

        def login_falso(cpf, senha)
          acesso.acesso_fake(cpf, senha)
        end

        def senha_falso(cpf, cnpj)
          acesso.senha_fake(cpf, cnpj)
        end

        def alt_falso(cpf)
          acesso.alt_fake(cpf)
        end

      end
    end
  end
end
