# language: pt

Funcionalidade: Autenticação

  Contexto: Page Login
    Dado que esteja na Home page
    Quando acessar a página de login

    @login
    Esquema do Cenário: Login
      Quando fazer login com "<cpf>" e "<senha>"
      Então deverá exibir o "<nome>" de usuário na Home page
      Exemplos:
      | cpf         | senha    | nome    |
      | 17451506096 | 12345678 | Claitão |

    @login
    Esquema do Cenário: Login exception
      Quando fazer login com "<cpf>" e "<senha>"
      Então deverá exibir a mensagem de alerta "<saida>"

      Exemplos:
      | cpf         | senha  | saida                               |
      | 17451506096 | asd123 | Senha incorreta                     |
      | 94317263009 | 123456 | Você não tem cadastro na Fast Shop. |
      | 12345678912 | 123456 | Informe um CPF ou CNPJ válido       |
      |             | 123456 | Campo obrigatório                   |
      | 17451506096 |        | Campo obrigatório                   |
