# language: pt

Funcionalidade: Endereço

  Contexto: Acessar endereços
    Dado que esteja na Home page
    E que esteja logado
    Quando abrir minha conta
    E acessar meus endereços de entrega

    @endereco
    Cenário: Editar endereço
      Quando editar endereço
      Então deverá alterar endereço

    @endereco
    Cenário: Adicionar endereço
      Quando adicionar novo endereço
      Então endereço deverá ser adicionado

    @endereco
    Cenário: Excluir endereço
      Quando excluir endereço
      Então endereço deverá ser excluído

    @endereco
    Cenário: Adicionar endereço exception
      Quando cadastrar com "<nome>", "<cep>" e "<tel>"
      Então deverá exibir a "<mensagem>"

      Exemplos:
      | nome | cep       | tel        | mensagem                              |
      |      |           |            | Campo obrigatório                     |
      | As a | 123       | 1111111111 | Preencha o CEP completo               |
      | As a | 12345-678 | 1111111111 | CEP não localizado.                   |
      | a    | 99010-051 | 1111111111 | Preencha o nome e sobrenome.          |
      | As a | 99010-051 | 141164795  | Preencha o telefone completo com DDD. |
