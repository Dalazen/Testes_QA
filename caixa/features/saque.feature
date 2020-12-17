#language:pt
Funcionalidade: Saque em conta corrente

	@task1
	Cenário: Saque
		Dado que tenha 1000 reais na conta
		Quando efetuar um saque no valor de 200 reais
		Então o saldo final será de 800 reais
		E deverá exibir a seguinte mensagem "Saque com sucesso. Muito obrigado!"

	@task2
	Cenário: Cliente não tem saldo disponível
		Dado que tenha 0 reais na conta
		Quando efetuar um saque no valor de 100 reais
		Então o saldo final será de 0 reais
		E deverá exibir a seguinte mensagem "Saldo insuficiente para saque."

	@task3
	Cenário: Saque com valor acima do saldo disponível
		Dado que tenha 100 reais na conta
		Quando efetuar um saque no valor de 300 reais
		Então o saldo final será de 100 reais
		E deverá exibir a seguinte mensagem "Saldo insuficiente para saque."

	@task4
	Cenário: Valor limite para Saque
		Dado que tenha 1200 reais na conta
		Quando efetuar um saque no valor de 750 reais
		Então o saldo final será de 1200 reais
		E deverá exibir a seguinte mensagem "Valor máximo de transação é R$700!"
