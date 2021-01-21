Dado("que esteja na Home page") do
  @home = $ec_pages.home
  @login = $ec_pages.login
  @cadastrar = $ec_pages.cadastro
  @home.load
  @home.fechar_cookie
end

Quando("acessar a página de login") do
  @home.abrir_login
end

Quando("fazer login com {string} e {string}") do |cpf, senha|
  @login.login_falso(cpf, senha)
end

Então("deverá exibir o {string} de usuário na Home page") do |nome|
  expect(@login.home_page).to have_content nome
end

Então("deverá exibir a mensagem de alerta {string}") do |mensagem|
  expect(@login.alerta.text).to have_content mensagem
end
