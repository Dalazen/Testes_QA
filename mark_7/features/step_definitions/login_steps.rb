Dado('que acesse o sistema') do
	@login_page.load
end

Quando('fazer login com {string} e {string}') do |email, senha|
	@login_page.login_email.set email
	@login_page.login_senha.set senha
	
	@login_page.login_button.click
end

Então('deverá exibir a mensagem de boas vindas {string}') do |mensagem|
	expect(@login_page.painel).to have_content mensagem
end

Então('deverá exibir a mensagem de alerta {string}') do |mensagem|
	expect(@login_page.alerta.text).to have_content mensagem
end
