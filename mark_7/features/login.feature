# language: pt
Funcionalidade: Autenticação

	Contexto: Home
		Dado que acesse o sistema
	
        @sprint1 @logout
        Cenário: Login
            Quando fazer login com "guilhermebatistellad@gmail.com" e "123456"
            Então deverá exibir a mensagem de boas vindas "Olá, Guilherme"

        @sprint2
        Esquema do Cenário: Login exception
            Quando fazer login com "<email>" e "<senha>"
            Então deverá exibir a mensagem de alerta "<saida>"

            Exemplos:
            | email                          | senha  | saida                       |
            | guilhermebatistellad@gmail.com | asd123 | Senha inválida.             |
            | teste@superteste123.com        | 123456 | Usuário não cadastrado.     |
            |                                | 123456 | Email incorreto ou ausente. |
            | teste@superteste123.com        |        | Senha ausente.              |
