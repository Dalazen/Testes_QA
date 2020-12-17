class TarefasPage
	include Capybara::DSL

	def painel
		find("#task-board")
	end
end