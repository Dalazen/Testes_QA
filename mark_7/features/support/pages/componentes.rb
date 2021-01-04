class Navbar < SitePrism::Page
	element :dropdown, ".navbar a[href*=dropdown]"
	element :sair, ".navbar a[href*=logout]"
end

class Sidebar < SitePrism::Page
	element :acessa_perfil, "nav > ul > li > [href='/user_settings']"
end