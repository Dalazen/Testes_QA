class LoginPage < SitePrism::Page
    set_url "/login"

    element :painel, "#task-board"
    element :login_email, "#login_email"
    element :login_senha, "input[name=password]"
    element :login_button, "button[id*=btnLogin]"
    element :alerta, ".alert-login"
  
end