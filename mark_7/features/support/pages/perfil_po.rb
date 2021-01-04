class PerfilPage < SitePrism::Page
	element :alerta, ".alert-login"
	element :perfil_empresa, "#profile-company"
	element :perfil_option, "select[class='form-control']"
	element :perfil_button, "#form-submit-button"
end