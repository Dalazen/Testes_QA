module Ecommerce
  module Sections
    module Dados
      class Endereco < SitePrism::Section

        element :add_end, '.btn-new-address'
        element :edit_end, '.edit', match: :first
        element :end_excluir, '.type-link.delete', match: :first
        element :end_nome, '[formcontrolname="name"]'
        element :imovel, "select[formcontrolname='housingType']"
        element :input_celular, "#telephone"
        element :input_cep, "#zipCode"
        element :input_n, "#number"
        element :job, '.job'
        element :save, '.btn.btn-save'

        def editar
          endereco = Factory.address

          edit_end(wait:2)
          edit_end.gclick
          input_n.gset endereco[:numero]

          save.gclick
        end

        def excluir
          end_excluir.gclick
          end_excluir.gclick
        end

        def adicionar
          endereco = Factory.address
          usuario = Factory.user

          add_end.gclick
          job.gclick
          end_nome.gset usuario[:nome]
          input_cep.gset endereco[:cep]
          input_n.gset endereco[:numero]
          imovel.select "Casa"
          input_celular.gset usuario[:celular]

          save.gclick
        end

        def end_fake(nome, cep, tel)
          add_end.gclick
          job.gclick
          end_nome.gset nome unless nome == ""
          input_cep.gset cep unless cep == ""
          input_n.gset "276"
          imovel.select "Casa"
          input_celular.gset tel unless tel == ""

          save.gclick
        end

      end
    end
  end
end
