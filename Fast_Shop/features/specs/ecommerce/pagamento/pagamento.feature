# language: pt

Funcionalidade: Pagamento

  Contexto: Usuário credenciado
    Dado que esteja na Home page
    E que esteja logado
    Quando efetuar a compra

    @pagamento
    Cenário: Comprar produto por boleto
      Quando selecionar pagamento por boleto
      Então deverá exibir a mensagem de compra

    @pagamento @teste
    Cenário: Comprar produto por cartão
      Quando selecionar pagamento por cartão
      E inserir dados do cartão
      Então deverá exibir o aviso
