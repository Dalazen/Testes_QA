Quando("adicionar produto ao carrinho") do
  @home.vitrine.scroll_into_view
  @produto = @home.produtos[@home.first_buyable_index]

  step 'salvar informações do produto na página'

  @produto.adicionar_ao_carrinho
end

Quando('salvar informações do produto na página') do
  @box_produto_link = @produto.get_link
  @box_produto_preco = @produto.get_preco
  @box_produto_quantidade = @produto.get_quantidade
end

Quando('salvar informações do produto no carrinho') do
  @carrinho_produto_link = @produto_carrinho.get_link
  @carrinho_produto_preco = @produto_carrinho.get_preco
  @carrinho_produto_quantidade = @produto_carrinho.get_quantidade
end

Então("o produto deverá estar no carrinho") do
  @main_header.abrir_carrinho
  @carrinho = @home.carrinho
  @produto_carrinho = @carrinho.produtos.last

  step 'salvar informações do produto no carrinho'
  step 'validar produto no carrinho'
end

Então('validar produto no carrinho') do
  expect(@carrinho_produto_link).to eql @box_produto_link
  expect(@carrinho_produto_preco).to eql @box_produto_preco
  expect(@carrinho_produto_quantidade).to eql @box_produto_quantidade
end
