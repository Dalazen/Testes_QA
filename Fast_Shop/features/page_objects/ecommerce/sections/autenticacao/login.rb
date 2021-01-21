module Ecommerce
  module Sections
    module Autenticacao
      class Login < SitePrism::Section

        element :alterar_senha, ".options > .email"
        element :btn_login, ".btn.btn-green"
        element :btn_senha, ".forgotPassword-link"
        element :input_cpf, "#document"
        element :input_senha, "#password"
        element :rec_senha, ".btn-green.recover"

        def acessa_login
          btn_login.gclick
        end

        def red_senha
          btn_senha.gclick
        end

        def select_email
          alterar_senha.gclick
          rec_senha.gclick
        end

        def faz_login
          usuario = Factory.user
          input_cpf.gset usuario[:cpf_conta]
          input_senha.gset usuario[:senha]
          btn_login.gclick
        end

        def acesso_fake(cpf, senha)
          input_cpf.gset cpf unless cpf == ""
          input_senha.gset senha unless senha == ""
          btn_login.gclick
        end

        def senha_fake(cpf,cnpj)
          input_cpf.gset cpf unless cnpj != ""
          input_cpf.gset cnpj unless cpf != ""
          rec_senha.gclick
        end

        def alt_fake(cpf)
          input_cpf.gset cpf
          rec_senha.gclick
        end

      end
    end
  end
end
