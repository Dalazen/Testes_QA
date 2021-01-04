class TarefasPage < SitePrism::Page
	include Capybara::DSL
	
	def buscar_tr(nome)
		find("#tasks tbody tr", text: nome)
	end

	element :alerta, ".alert-warn"
	element :cadastro, "#insert-button"
	element :cadastrar_tarefa, "#form-submit-button"
	element :data_f, "#dueDate"
	element :nome, "#title"

end

# click_link 
# click_button
# click_on