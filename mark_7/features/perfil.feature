#language: pt
Funcionalidade: Meu perfil

	@logout
	Esquema do Cenário: Atualizar perfil
		Dado que estou autenticado com "<email>" e "<senha>"
		E acesso o meu perfil
		Quando completo o meu cadastro com "<empresa>" e "<cargo>"
		Então devo ver a mensagem de atualização cadastral:
        """
        Perfil atualizado com sucesso.
        """
        
			Exemplos:
				| email                          | senha  | empresa   | cargo      |
                | guilhermebatistellad@gmail.com | 123456 | Linkedin  | QA         |
                | leti@teste.com                 | 654321 | Yahoo     | Developer  |
                | jed@teste.com                  | 543216 | Microsoft | CEO        |
                | mclovin@teste.com              | 432156 | Google    | CTO        |
                | claitao@teste.com              | 321456 | Facebook  | Estagiario |
                