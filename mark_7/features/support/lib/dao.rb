require "mongo"

class DAO
	attr_accessor :client

	Mongo::Logger.logger = Logger.new("log/mongo.log")

	def init
		# mongodb://usuario:senha@servidor:porta/banco_de_dados
		str_con = "mongodb://127.0.0.1:27017/markdb"
		@client = Mongo::Client.new(str_con)
	end

	def obter_usuario(email)
		users = @client[:users]
		users.find("profile.email" => email).first
	end

	def buscar_tarefa(nome, email)
		user = obter_usuario(email)
		tasks = @client[:tasks]
		tasks.find("title" => nome, "createdBy" => user[:_id])
	end

	def remover_tarefas(nome, email)
		user = obter_usuario(email)
		tasks = @client[:tasks]
		tasks.delete_many("title" => nome, "createdBy" => user[:_id])
	end
end
