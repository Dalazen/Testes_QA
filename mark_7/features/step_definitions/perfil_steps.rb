Dado("que esteja autenticado com {string} e {string}") do |email, senha|
	@login_page.load
	@login_page.login_email.set email
	@login_page.login_senha.set senha
	
	@login_page.login_button.click
end

Quando("acessar o perfil") do
	@side.acessa_perfil.click
end

Quando("completar cadastro com {string} e {string}") do |empresa, cargo|
	@perfil_page.perfil_empresa.set empresa
	@perfil_page.perfil_option.select(cargo)
	@perfil_page.perfil_button.click
end

Então("deverá exibir a mensagem de atualização cadastral:") do |mensagem|
	expect(@perfil_page.alerta.text).to have_content mensagem
end
