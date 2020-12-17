Before do
	@nav = Navbar.new
	@side = Sidebar.new
	@login_page = LoginPage.new
	@tarefas_page = TarefasPage.new
	@perfil_page = PerfilPage.new
end

After("@logout") do
	@nav.sair
end