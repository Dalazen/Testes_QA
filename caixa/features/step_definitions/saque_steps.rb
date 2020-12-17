require_relative "../../src/app.rb"

Dado("que tenha {int} reais na conta") do |saldo_inicial|
	@conta = Conta.new
	@conta.saldo = saldo_inicial
end

Quando("efetuar um saque no valor de {int} reais") do |valor_saque|
	@conta.saque(valor_saque)
end

Então("o saldo final será de {int} reais") do |saldo_final|
	expect(@conta.saldo).to eql saldo_final
end

Então("deverá exibir a seguinte mensagem {string}") do |mensagem|
	expect(@conta.mensagem_saida).to eql mensagem
end
