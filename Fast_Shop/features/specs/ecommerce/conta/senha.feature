# language: pt

Funcionalidade: Senha

  Contexto: Page Senha
    Dado que esteja na Home page
    Quando acessar a página de login
    E acessar esqueci minha senha

    @senha
    Esquema do Cenário: Alterar senha
      Quando inserir "<cpf>"
      E escolher email cadastrado
      Então deverá exibir a mensagem "<mensagem>"

      Exemplos:
      | cpf         | mensagem       |
      | 43374568050 | E-mail enviado |

    @senha
    Esquema do Cenário: Alterar senha exception
      Quando inserir "<cpf>" ou "<cnpj>"
      Então deverá exibir a mensagem "<mensagem>"

      Exemplos:
      | cpf         | cnpj           | mensagem                            |
      | 123         |                | Informe um CPF ou CNPJ válido       |
      |             | 1234567890123  | Informe um CPF ou CNPJ válido       |
      | 12345678901 |                | Informe um CPF válido               |
      |             | 11111111111111 | Informe um CNPJ válido              |
      | 94086752077 |                | Você não tem cadastro na Fast Shop. |
      |             | 87085769000138 | Você não tem cadastro na Fast Shop. |
