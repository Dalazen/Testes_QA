Quando('efetuar a compra') do
  @home.faz_compra
end

Quando('selecionar pagamento por boleto') do
  @home.seleciona_boleto
end

Quando('selecionar pagamento por cartão') do
  @home.seleciona_cartao
end

Quando('inserir dados do cartão') do
  @home.insere_cartao
end

Então('deverá exibir a mensagem de compra') do
  sleep(5)
  mensagem = "Obrigado por comprar na Fast Shop!"
  expect(@home.msg_compra.text).to have_content mensagem
end

Então('deverá exibir o aviso') do
  sleep(5)
  mensagem = "Não foi possível processar o seu pagamento."
  expect(@home.aviso_compra.text).to have_content mensagem
end
