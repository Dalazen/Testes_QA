module Ecommerce
  module Sections
    module Dados
      class Pagamento < SitePrism::Section
        element :cartao, '[alt="Cartão de Crédito"]'
        element :boleto, '[alt="Boleto"]', match: :first
        element :num_card, '#cardNumber'
        element :nome_card, '#holderName'
        element :data_card, '#expireDate'
        element :cpf_card, '#document'
        element :parcela, '.virtual-selected'
        element :avista, '.virtual-available-item', match: :first
        element :cvv, '[formcontrolname="cvv"]'

        def select_boleto
          boleto(wait:5)
          boleto.gclick
        end

        def select_card
          cartao.gclick
        end

        def input_card
          card = Factory.card

          num_card.gset card[:numero]
          nome_card.gset card[:titular]
          data_card.gset card[:validade]
          cpf_card.gset card[:cpf]
        end

        def input_seg_card
          card = Factory.card

          cvv(wait:5)
          cvv.gset card[:cvv]
          parcela.gclick
          avista.gclick
        end

      end
    end
  end
end
