require 'faker'
require 'cpf_faker'

class Factory
  def self.address
    {
      cep: '99010-051',
      logradouro: 'Rua Coronel Chicuta',
      numero: '575',
      bairro: 'Centro'
    }
  end

  def self.card
    {
      cpf: "17451506096",
      numero: '5155901222280001',
      titular: "Test Automation #{Faker::Name.first_name}",
      validade: '1228',
      cvv: '258'
    }
  end

  def self.user
    {
      cpf: Faker::CPF.pretty,
      apelido: Faker::Space.planet,
      nome: "Test Automation #{Faker::Name.first_name}",
      email: "teste.#{Faker::Name.first_name}.#{rand(99)}@mailsac.com",
      celular: "5499999#{rand(9999)}",
      telefone: "543380#{rand(9999)}",
      nascimento: Faker::Date.birthday(min_age: 18, max_age: 65).strftime('%d/%m/%Y'),
      senha: "12345678",
      cpf_conta: "17451506096"
    }
  end

end
