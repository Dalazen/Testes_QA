#language: pt
Funcionalidade: Cadastro de tarefas

	@smoke @login @logout
	Cenário: Nova Tarefa
		Dado que o nome da minha tarefa é "Planejar minha viagem para Rússia"
		E a data de finalização será "28/05/2022"
		E quero taguear esta tarefa com:
			| tag     |
			| Russian |
			| Whisky  |
			| Frio    |
		Quando faço o cadastro desta tarefa
		Então devo ver esta tarefa com o status "Em andamento"
		E devo ver somente 1 tarefa com o nome cadastrado

	@tentativa @login @logout
	Esquema do Cenário: Tentar cadastrar
		Dado que o nome da minha tarefa é "<nome>"
		E a data de finalização será "<data>"
		Quando faço o cadastro desta tarefa
		Então devo ver a seguinte mensagem "<mensagem>"

		Exemplos:
			| nome | data | mensagem| 
			| Ler  | 18/12/2022 | 10 caracteres é o mínimo permitido. | 
			|      | 18/12/2022 | Nome é obrigatório. |

	@duplo @login @logout
	Cenário: Tarefa não pode ser duplicada
		Dado que o nome da minha tarefa é "Testando duplicidade"
		E a data de finalização será "22/05/2022"
		Mas eu já cadastrei esta tarefa e esqueci
		Quando faço o cadastro desta tarefa
		Então devo ver a seguinte mensagem "Tarefa duplicada."
		E devo ver somente 1 tarefa com o nome cadastrado