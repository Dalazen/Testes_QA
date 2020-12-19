Before do
	@nav = Navbar.new
	@side = Sidebar.new
	@login_page = LoginPage.new
	@tarefas_page = TarefasPage.new
	@perfil_page = PerfilPage.new
	@cadastro_page = CadastroPage.new

	page.current_window.resize_to(800, 600)
end

Before("@login") do
	@login_page.login_path
	@login_page.logar("jed@teste.com", "543216")
end

After("@logout") do
	@nav.sair
end