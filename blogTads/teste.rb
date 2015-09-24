class Conta 
    attr_accessor :numero
    attr_accessor :conta
    attr_accessor :agencia
    attr_accessor :banco
    attr_accessor :saldo
    attr_accessor :limite
    attr_accessor :nome_usuario
    
    def sacar(quantidade)
       self.saldo = self.saldo - quantidade
    end
end

a = new Conta

a.nome_usuario = "eu"
a.saldo = 150

puts "Correntista #{a.nome_usuario} possui saldo #{a.saldo}"

a.sacar(100)

puts "novo saldo é #{a.saldo}"