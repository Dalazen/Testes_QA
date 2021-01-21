Dado("que esteja logado") do
  @home.abrir_login
  @login.fazer_login
end

Quando('acessar categoria') do
  @home.abre_categoria
end

Quando('adicionar produto ao carrinho') do
  @home.seleciona_produto
end

Então('produto deverá ser adicionado ao carrinho') do
  expect(@home.nota.text).to have_content "Adicionado no carrinho com sucesso"
end

Então('deverá ser redirecionado para a página de login') do
  expect(@login.alerta.text).to have_content "Faça Login"
end
