# language: pt

Funcionalidade: Cadastro

  Contexto: Page Cadastro
    Dado que esteja na Home page
    Quando acessar a página de cadastro

    @cadastro
    Cenário: Cadastrar usuário
      Quando cadastrar os dados de usuário
      E cadastrar os dados de moradia
      Então deverá exibir o "nome" de usuário na Home

    @cadastro @user_fake
    Esquema do Cenário: Cadastrar usuário exception
      Quando cadastrar com "<cpf>", "<cnpj>", "<nome>", "<data>", "<tel>", "<email>", "<senha>" e "<confirma>"
      Então deverá exibir a "<mensagem>" de erro

      Exemplos:
      | cpf         | cnpj           | nome   | data     | tel        | email   | senha    | confirma | mensagem                                                      |
      |             |                |        |          |            |         |          |          | Campo obrigatório                                             |
      | 123         |                | Te ste | 22111990 | 1111111111 | a@a.com | 12345678 | 12345678 | Preencha o documento completo                                 |
      |             | 123456789012   | Te ste | 22111990 | 1111111111 | a@a.com | 12345678 | 12345678 | Documento inválido                                            |
      | 12345678901 |                | Te ste | 22111990 | 1111111111 | a@a.com | 12345678 | 12345678 | CPF inválido                                                  |
      |             | 12345678901234 | Te ste | 22111990 | 1111111111 | a@a.com | 12345678 | 12345678 | CNPJ inválido                                                 |
      | 94086752077 |                | a      | 22111990 | 1111111111 | a@a.com | 12345678 | 12345678 | Preencha o nome completo                                      |
      | 94086752077 |                | Te ste | 20041889 | 1111111111 | a@a.com | 12345678 | 12345678 | Preencha uma data de nascimento válida no formato DD/MM/AAAA. |
      | 94086752077 |                | Te ste | 22111990 | 141164795  | a@a.com | 12345678 | 12345678 | Preencha o telefone completo com DDD.                         |
      | 94086752077 |                | Te ste | 22111990 | 1111111111 | a@gmail | 12345678 | 12345678 | Utilize o formato nome@exemplo.com.                           |
      | 94086752077 |                | Te ste | 22111990 | 1111111111 | a@a.com | 123456   | 123456   | A senha deve conter no mínimo 8 caracteres.                   |
      | 94086752077 |                | Te ste | 22111990 | 1111111111 | a@a.com | 12345678 | 87654321 | As senhas devem ser iguais.                                   |

    @cadastro @end_fake
    Esquema do Cenário: Cadastrar endereço exception
      Quando cadastrar com "<cep>"
      Então deverá exibir a "<mensagem>" de erro

      Exemplos:
      | cep       | mensagem                |
      |           | Campo obrigatório       |
      | 123       | Preencha o CEP completo |
      | 12345-678 | CEP não localizado.     |
