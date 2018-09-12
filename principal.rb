# Por Fernando Moraes Oliveira
# 11/09/2018

puts
puts "---------  Menu de Exemplos Ruby  ---------"
puts
puts "01.0 - Variáveis"
puts "02.0 - Exemplo gets, chomp, inspect, to_i"
puts "03.0 - Condicionais"
puts "14.0 - Interpolação"
puts "14.1 - Concatenação"
puts "14.2 - Substituição"
puts "14.3 - Quando concatenar com '+' ou '<<'"
puts "14.4 - Strings x Symbols"
puts "15.0 - Métodos"
puts "15.1 - Métodos de Inserção"
puts "15.2 - Métodos de Remorção"
puts "15.3 - Métodos com parâmetros"
puts "16.0 - Parênteses"
puts "16.1 - Constantes"
puts "16.2 - Método split"
puts "16.3 - Método join"
puts "16.4 - Método eval"
puts "16.5 - Método instance_of"
puts "16.6 - Ranges e Intervalos"
puts "17.0 - Classes"
puts "17.1 - Encapsulamento"
puts "18.0 - Classes e Heranças"
puts "19.0 - Módulos e Mixins"
puts "00.0 - Mais..."
puts
puts "--------------------------------------------"
puts "> Digite uma opção:"

op = gets.chomp

case op

when "00.0"
    puts
    puts "Site com livro sobre Ruby:"
    puts "http://www.jmonteiro.com/aprendaaprogramar/"
    puts

when "01.0"
    puts
    puts "------------------------------------------"
    puts "|               AULA 010                 |"
    puts "------------------------------------------"
    puts
    puts "Variaveis:"
    puts
    puts "Olá! Aula 10!"
    puts "Somando 1 + 5 + 4 = " 
    puts 1 + 5 + 4
    puts

    when "02.0"
    puts
    puts "gets, chomp e inspect, to_i"
    puts
    puts "\nDigite o seu nome…"
    nome = gets.chomp
    puts "Seu nome é: #{nome.inspect}"

    puts "\nDigite sua idade…"
    idade = gets.to_i
    puts "Sua idade somada a 3 anos é #{idade + 3}"
    puts

when "03.0"
    puts
    puts "Condicionais:"
    puts
    puts "\nDigite a:"
    a = gets.to_i
    puts "\nDigite b:"
    b = gets.to_i
    if a < b
        puts "Usando if:     'a' é menor ( #{a} < #{b} )!"
    else
        puts "Usando if:     'a' é maior ( #{a} > #{b} )!"
    end

    unless a < b
        puts "Usando unless: 'b' é menor ( #{a} < #{b} )!"
    else
        puts "Usando unless: 'a' é menor ( #{a} < #{b} )!"
    end
    puts

when "14.0"
    puts
    puts "------------------------------------------"
    puts "|               AULA 014                 |"
    puts "------------------------------------------"
    puts
    puts "a) Interpolação"
    puts

    nomes = %w(Fernando Adriana)

    nomes.each do |nome|
        puts "Olá, #{nome}"
    end
    puts

when "14.1"
    puts
    puts "b) Concatenação"

    puts "Concatenar (1): Ruby" + "On" + "Rails : #{nomes[0]}"
    puts "Cancatenar (2): Ruby" << "On" << "Rails : #{nomes[1]}"
    puts

when "14.2"
    puts
    puts "c) Substituição"
    puts

    texto = "Substituir: Ruby" << "On" << "Rails - #{nomes[0]}" 
    puts texto.gsub("Fernando", "aprendendo!")
    puts texto

    puts texto.gsub!("Fernando", "aprendendo! (com método predicado)")
    puts texto
    puts

when "14.3"
    puts
    puts "Diferença de usar << e + :"
    puts
    txt = "Fernando M. "
    puts "Original              : " + txt.object_id.to_s
    puts
    puts "Gera um novo objeto:"
    txt = txt + "Oliveira"
    puts "Concatenando com '+'  : " + txt.object_id.to_s
    puts
    puts "Permanece com o mesmo objeto:"
    txt = txt << "Oliveira"
    puts "Concatenando com '<<' : " + txt.object_id.to_s
    puts

when "14.4"
    puts
    puts "d) Strings x Symbols"

    str = { "a" => 001, "b" => "Fernando" } # Hash com strings
    puts "Hash com string : " << str.to_s

    sym = { :a => 001, :b => "Fernando" } # Hash com symbols (string imutável representante)
    puts "Hash com symbol : " << sym.to_s

    symj = { a: 001, b: "Fernando" } # A partir da v.1.9
    puts "Hash com symbol/JSON : " << symj.to_s
    puts


when "15.0"
    puts
    puts "------------------------------------------"
    puts "|               AULA 015                 |"
    puts "------------------------------------------"
    puts
    puts "a) Métodos"
    puts "  ---------"
    puts
    a = [11, 22, 33, 44]
    puts "Vetor original: " << a.inspect.to_s
    puts
    puts "Vários métodos fazem a mesma coisa:"
    puts "Método size:   " << a.size.to_s
    puts "Método length: " << a.length.to_s
    puts "Método count:  " << a.count.to_s
    puts

when "15.1"
    puts
    puts "Método de inserção em Arrays:"
    puts
    a = [11, 22, 33, 44]
    a.push(55)
    puts "No final push(55): " << a.inspect.to_s
    a.unshift(66)
    puts "No início unshift(66): " << a.inspect.to_s
    puts

when "15.2"
    puts
    puts "Método de remorção em Arrays:"
    a = [11, 22, 33, 44]
    a.pop
    puts "No final pop: " << a.inspect.to_s
    a.shift
    puts "No início shift: " << a.inspect.to_s
    puts

when "15.3"
    puts
    puts "Métodos com parâmetros:"
    puts
    def soma(a, b)
        resultado = a + b
        puts "A soma de #{ a } + #{ b } é igual a #{ resultado }"
    end

        soma(5, 6)
    puts
    def fim (x, y)
        puts "#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}"
        puts "#{y}            FIM DA AULA 015            #{y}"
        puts "#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}#{x}"
    end
    fim("-", "|")
    puts
    fim("*", "*")
    puts
    fim("#", "#")
    puts

when "16.0"
    puts
    puts "------------------------------------------"
    puts "|               AULA 016                 |"
    puts "------------------------------------------"
    puts
    puts
    puts "-- PARÊNTESES --"
    puts
    puts "Não é necessário o uso de parenteses - soma(a, b) ou soma a, b: "
    puts
    def soma(a, b, str)
        resultado = a + b
        puts "#{str} - A soma de #{ a } + #{ b } é igual a #{ resultado }"
    end
    soma(1, 5, "Com '()' ")
    soma 10, 5, "Sem '()' "
    puts

when "16.1"
    puts
    puts "-- CONSTANTES --"
    puts
    puts "Contantes são escritas em MAIUSCULA e variaveis minuscula. A contante é um valor"
    puts "estático, ocupando menos memória, mas pode ser alterado (o Ruby avisará):"
    puts
    ror = "Ruby On Rails"
    ROR = "Ruby On Rails"
    puts ror
    puts ROR
    puts

when "16.2"
    puts
    puts "-- MÉTODO SPLIT --"
    puts
    puts "O método split usa um separador e transforma em um vetor:"
    puts
    str = "Pão,Leite,Café,Bolacha,Rosquinha"
    x = str.split(",")
    puts "Sem o split:  #{str}"
    puts
    puts "Com o split:  #{x.inspect}"
    puts
    puts "Usar o split sem o delimitador definido faz com que se considere os espaços:"
    puts
    str1 = "Fernando Moraes Oliveira"
    x1 = str1.split
    puts "Sem o split:  #{str1}"
    puts
    puts "Com o split:  #{x1.inspect}"
    puts
    puts "Mas usar %w tem o mesmo resultado:"
    puts
    str2 = %w(Fernando Moraes Oliveira)
    puts "Com o %w:  #{str2.inspect}"
    puts

when "16.3"
    puts
    puts "-- MÉTODO JOIN --"
    puts
    puts "Usando o método join: #{str2.join(" ")}"
    puts

when "16.4"
    puts
    puts "-- MÉTODO EVAL --"
    puts
    puts "O método eval interpreta com o Ruby uma string:"
    puts
    puts "O digite uma operação matemática simples:"
    str3 = gets.chomp
    puts "Sem eval (a classe é #{ str3.class}) : O resultado é #{ str3.inspect }"
    puts "Com eval (a classe é #{ eval(str3).class}): O resultado é #{ eval(str3) }"
    puts

when "16.5"
    puts
    puts "-- MÉTODO INSTANCE_OF --"
    puts
    puts "O método instace_of testa o tipo da variável:"
    puts

    def mostrar (a)
        if a.instance_of?(String)
            puts "É uma String: #{ a }"
        end

        if a.instance_of?(Array)
            a.each do |i|
            puts "É um elemento de Array: #{ i }"
            end
        end 
    end

    mostrar ("Fernando")
    mostrar ([1, 2, 3])
    puts

when "16.6"
    puts
    puts "-- INTERVALOS E RANGES --"
    puts
    puts "É possíve percorrer um intervalo usando 1..5 incluindo o último elemento:"
    (1..5).each do |i|
        puts i
    end
    puts
    puts "Quando intervalo usa 1...5 NÃO inclui o último elemento:"
    (1...5).each do |i|
        puts i
    end
    puts


when "17.0"
    puts
    puts "------------------------------------------"
    puts "|           AULA 017 : Classes           |"
    puts "------------------------------------------"
    puts
    puts
    class Pessoa
        def initialize(str)
            @nome = str
        end

        def nome
            @nome
        end

        def nome=(novo_nome)
            @nome = novo_nome
        end

        def apresente_se
        puts "Olá, nasci de uma classe Pessoal!"
        end

        def objId
            puts self.object_id
        end
    end
    puts


when "17.1"
    puts
    puts "-- ENCAPSULAMENTO (attr_accessor) --"
    puts
    puts "Cria virtualmente métodos públicos (getters e setters) usando váriaveis"
    puts "de instância (@variável) para os atributos da classe:"
    puts
    puts "Uso: require_relative 'pricinpal.rb'"
    class Pessoa
        attr_accessor :nome
        def initialize(str)
            @nome = str
        end
    end
    puts


when "18.0"
    puts
    puts "------------------------------------------"
    puts "|    AULA 018 : Classes e Herança        |"
    puts "------------------------------------------"
    puts
    puts "Uso: require_relative 'pricinpal.rb'"

    class Pessoa
        attr_accessor :nome
        attr_accessor :endereco
    end
    puts

when "19.0"
    puts
    puts "------------------------------------------"
    puts "|       AULA 019 : Módulos e Mixins      |"
    puts "------------------------------------------"
    puts
    puts "Módulos são semelhantes às classes (podem ter classes, constantes)"
    puts "Mas não podem gerar objetos nem herdar, fornecendo funcionalidades a classes ou objetos"
    puts "Fornecem um namespace evitando conflitos de nomes"
    puts
    puts "Uso: $ ruby pricinpal.rb"
    puts
    require_relative "venda"
    v = Venda.new
    v.vender
    puts

else
    puts
    puts "Você digitou #{ op } e não faço idéia do que pretendia…"
    puts
end
