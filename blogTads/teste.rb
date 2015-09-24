class Conta 
    attr_accessor :numero
    attr_accessor :conta
    attr_accessor :agencia
    attr_accessor :banco
    attr_accessor :saldo
    attr_accessor :limite
    attr_accessor :nome_usuario
    
    def sacar(quantidade)
        puts "Sacando #{quantidade}"
        self.saldo = self.saldo - quantidade
        exibirSaldo()
    end
    def exibirSaldo()
        puts "novo saldo é #{self.saldo}"
    end
    def depositar(quantidade)
       puts "Efetuando deposito de #{quantidade}" 
       self.saldo = self.saldo + quantidade
       exibirSaldo()
    end
end

a = Conta.new

a.nome_usuario = "eu"
a.saldo = 150

puts "Correntista #{a.nome_usuario} possui saldo #{a.saldo}"

a.sacar(100)

a.depositar(423)
