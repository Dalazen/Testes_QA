Quando('acessar a página de cadastro') do
  @home.abrir_login
  @cadastrar.abrir_cadastro
end

Quando('cadastrar os dados de usuário') do
  @cadastrar.cadastro_usuario
end

Quando('cadastrar os dados de moradia') do
  @cadastrar.cadastro_casa
end

Quando('cadastrar com {string}, {string}, {string}, {string}, {string}, {string}, {string} e {string}') do |cpf, cnpj, nome, data, tel, email, senha, confirma|
  @cadastrar.cadastro_falso(cpf,cnpj,nome,data,tel,email,senha,confirma)
end

Quando("cadastrar com {string}") do |cep|
  @cadastrar.casa_falsa(cep)
end

Então("deverá exibir o {string} de usuário na Home") do |nome|
  nome = "Test"
  expect(@login.home_page).to have_content nome
end

Então('deverá exibir a {string} de erro') do |mensagem|
  expect(@cadastrar.cad.alerta.text).to have_content mensagem
end
