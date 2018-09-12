require_relative "principal.rb"

# Uso: pf = PessoaJuridica.new
class PessoaJuridica < Pessoa
    attr_accessor :cnpj
    attr_accessor :nome_fantasia
end