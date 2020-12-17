# language: pt
Funcionalidade: Autenticação

	Contexto: Home
		Dado que eu acesso o sistema
	
        @sprint1 @logout
        Cenário: Login
            Quando faço login com "guilhermebatistellad@gmail.com" e "123456"
            Então vejo a mensagem de boas vindas "Olá, Guilherme"

        @sprint2
        Esquema do Cenário: Login exception
            Quando faço login com "<email>" e "<senha>"
            Então vejo a mensagem de alerta "<saida>"

            Exemplos:
            | email                          | senha  | saida                       |
            | guilhermebatistellad@gmail.com | asd123 | Senha inválida.             |
            | teste@superteste123.com        | 123456 | Usuário não cadastrado.     |
            |                                | 123456 | Email incorreto ou ausente. |
            | teste@superteste123.com        |        | Senha ausente.              |
