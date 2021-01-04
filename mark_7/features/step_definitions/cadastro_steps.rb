require "faker"

Dado("que esteja no formulário de cadastro") do
    @cadastro_page.load
end

Dado("inserir os dados {string} e {string} e {string}") do |nome, email, senha|
    @nome = nome
    @email = Faker::Lorem.characters(number: 4) + email
    @senha = senha
end

Dado("que inserir os dados {string} e {string} e {string}") do |nome, email, senha|
    @nome = nome
    @email = email
    @senha = senha
end

Quando("realizar cadastro") do
    @cadastro_page.registro_nome.set @nome
    @cadastro_page.registro_email.set @email
    @cadastro_page.registro_senha.set @senha

    @cadastro_page.button_registro.click
end

Então("exibir a mensagem de boas vindas {string}") do |mensagem|
    expect(@login_page.painel).to have_content mensagem
end

Então("exibir a mensagem de erro {string}") do |mensagem|
    expect(@cadastro_page.alerta.text).to have_content mensagem
end
