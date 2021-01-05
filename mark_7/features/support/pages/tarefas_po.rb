class TarefasPage < SitePrism::Page

	element :alerta, ".alert-warn"
	element :cadastro, "#insert-button"
	element :cadastrar_tarefa, "#form-submit-button"
	element :data_f, "#dueDate"
	element :nome, "#title"
	elements :tr, "#tasks tbody tr"

	def buscar_tr(n_task)
		tr.find { |tr| tr.text.match(/#{n_task}/i) }
	end

end

# click_link 
# click_button
# click_on