Quando("acessar esqueci minha senha") do
  @login.esqueci_senha
end

Quando("inserir {string}") do |cpf|
  @login.alt_falso(cpf)
end

Quando("inserir {string} ou {string}") do |cpf, cnpj|
  @login.senha_falso(cpf, cnpj)
end

Quando("escolher email cadastrado") do
  @login.seleciona_email
end

Então("deverá exibir a mensagem {string}") do |mensagem|
  expect(@login.senha_alerta.text).to have_content mensagem
end
