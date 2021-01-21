module Ecommerce
  module Sections
    module Autenticacao
      class Cadastro < SitePrism::Section

        element :alerta, ".register-form"
        element :btn_cadastrar, ".btn.btn-green"
        element :confirma_senha, "#password_confirmation"
        element :imovel, "select[formcontrolname='housingType']"
        element :input_celular, "#telephone"
        element :input_cep, "#zipCode"
        element :input_cpf, "#document"
        element :input_data, "#birthday"
        element :input_email, "#email"
        element :input_n, "#number"
        element :input_nome, "#name"
        element :input_senha, "#password"
        element :sexo, "label.field-outlined.select-outlined"

        def cadastro_user
          usuario = Factory.user

          input_cpf.gset usuario[:cpf]
          input_nome.gset usuario[:nome]
          input_data.gset usuario[:nascimento]
          sexo.select "Masculino"
          input_celular.gset usuario[:celular]
          input_email.gset usuario[:email]
          input_senha.gset usuario[:senha]
          confirma_senha.gset usuario[:senha]

          btn_cadastrar.gclick
        end

        def cadastro_endereco
          endereco = Factory.address

          input_cep.gset endereco[:cep]
          input_n.gset endereco[:numero]
          imovel.select "Casa"

          btn_cadastrar.gclick
        end

        def cadastro_fake(cpf,cnpj,nome,data,tel,email,senha,confirma)
          input_cpf.gset cpf unless cpf == ""
          input_cpf.gset cnpj unless cnpj == ""
          input_nome.gset nome
          input_data.gset data unless cnpj != ""
          sexo.select "Masculino" unless cnpj != ""
          input_celular.gset tel
          input_email.gset email
          input_senha.gset senha
          confirma_senha.gset confirma

          btn_cadastrar.gclick
        end

        def casa_fake(cep)
          cadastro_user
          input_cep.gset cep unless cep == ""
          btn_cadastrar.gclick
        end

      end
    end
  end
end
