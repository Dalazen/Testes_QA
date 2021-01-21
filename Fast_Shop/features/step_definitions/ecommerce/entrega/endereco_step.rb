Quando('abrir minha conta') do
  @home.abre_conta
end

Quando('acessar meus endereços de entrega') do
  @home.acessa_end
end

Quando('editar endereço') do
  @cadastrar.edita_end
end

Quando('adicionar novo endereço') do
  @cadastrar.adiciona_end
end

Quando('excluir endereço') do
  @cadastrar.exclui_end
end

Quando('cadastrar com {string}, {string} e {string}') do |nome, cep, tel|
  @cadastrar.end_falso(nome, cep, tel)
end

Então('deverá alterar endereço') do
  expect(@home.nota.text).to have_content "Endereço alterado com sucesso"
end

Então('endereço deverá ser adicionado') do
  expect(@home.nota.text).to have_content "Endereço adicionado com sucesso"
end

Então('endereço deverá ser excluído') do
  expect(@home.nota.text).to have_content "Endereço removido com sucesso."
end

Então('deverá exibir a {string}') do |mensagem|
  expect(@cadastrar.address.text).to have_content mensagem
end
