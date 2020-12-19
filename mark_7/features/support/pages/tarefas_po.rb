class TarefasPage
	include Capybara::DSL

	def painel
		find("#task-board")
	end
	
	def buscar_tr(nome)
		find("#tasks body tr", text: nome)
	end

	def alerta
		find(".alert-warn").text
	end

	def cadastrar(nome, data_f)
		find("#insert-button").click

		within("#add-task") do
			fill_in "title", with: nome
			fill_in "dueDate", with: data_f
			click_on "Cadastrar"
		end
	end

	def remover_tarefas
		find("#delete-button").click_button
		find(".btn.btn-danger").click_button
	end

end

# click_link 
# click_button
# click_on