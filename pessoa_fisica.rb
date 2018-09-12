require_relative "principal.rb"

# Uso: pf = PessoaFisica.new
class PessoaFisica < Pessoa
    attr_accessor :cpf
    attr_accessor :data_nascimento
end