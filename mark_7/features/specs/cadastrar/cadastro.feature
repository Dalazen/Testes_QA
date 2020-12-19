#language: pt
Funcionalidade: Cadastro de usuários

	Contexto: Formulário
		Dado que esteja no formulário de cadastro
	
		@cadastro @logout
		Cenário: Cadastro usuário
			E inserir os dados "Claitinho" e "@xd.com" e "123456"
			Quando realizar cadastro
			Então exibir a mensagem de boas vindas "Olá, Claitinho"

		@cadastro
		Esquema do Cenário: Campos obrigatórios
			E que inserir os dados "<nome>" e "<email>" e "<senha>"
			Quando realizar cadastro
			Então exibir a mensagem de erro "<saida>"

			Exemplos:
				| nome  | email      | senha  | saida                |
				|       | ali@so.com | 123456 | Nome é obrigatório.  |
				| Aliso |            | 123456 | Email é obrigatório. |
				| Aliso | ali@so.com |        | Informe uma senha.   |