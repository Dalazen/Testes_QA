class CadastroPage < SitePrism::Page
    set_url "/register"

    element :registro_nome, "#register_name"
    element :registro_email, "#register_email"
    element :registro_senha, "#register_password"
    element :button_registro, ".btn-accent"
    element :alerta, ".alert-message"
    
end