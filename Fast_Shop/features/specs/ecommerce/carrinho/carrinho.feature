# language: pt

Funcionalidade: Carrinho

  Contexto: Home
    Dado que esteja na Home page

    @carrinho
    Cenário: Adicionar produto por Home
      Dado que esteja logado
      Quando adicionar produto ao carrinho
      Então produto deverá ser adicionado ao carrinho

    @carrinho
    Cenário: Adicionar produto por categoria
      Dado que esteja logado
      Quando acessar categoria
      E adicionar produto ao carrinho
      Então produto deverá ser adicionado ao carrinho

    @carrinho
    Cenário: Adicionar produto por Home exception
      Quando adicionar produto ao carrinho
      Então deverá ser redirecionado para a página de login

    @carrinho
    Cenário: Adicionar produto por categoria exception
      Quando acessar categoria
      E adicionar produto ao carrinho
      Então deverá ser redirecionado para a página de login
