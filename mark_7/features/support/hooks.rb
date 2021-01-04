Before do
	@nav = Navbar.new
	@side = Sidebar.new
	@login_page = LoginPage.new
	@tarefas_page = TarefasPage.new
	@perfil_page = PerfilPage.new
	@cadastro_page = CadastroPage.new
	@dao = DAO.new

	page.current_window.resize_to(800, 600)
end

Before("@login") do
	@usuario = {email: "jed@teste.com", senha: "543216"}

	@login_page.load
	@login_page.login_email.set(@usuario[:email])
	@login_page.login_senha.set (@usuario[:senha])
	@login_page.login_button.click
end

After("@logout") do
	@nav.dropdown.click
	@nav.sair.click
end