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
        if possuiLimite(quantidade)
            self.saldo -= quantidade 
        else
            puts "saldo insuficiente para saque"
        end
        exibirSaldo()
    end
    def possuiLimite(quantidade)
        ((self.saldo - quantidade)>(-self.limite))
    end
    def exibirSaldo()
        puts "saldo atual do correntista #{self.nome_usuario} é #{self.saldo}"
        puts "---------------------------"
    end
    def depositar(quantidade)
       puts "Efetuando deposito de #{quantidade}" 
       self.saldo += quantidade
       exibirSaldo()
    end
    def transferencia(ct_destino, quantidade)
        if possuiLimite(quantidade)
            self.sacar(quantidade)
            ct_destino.depositar( quantidade)
        else
            puts "Sr. #{self.nome_usuario} saldo insuficiente para tranferencia"
        end
    end
end

a = Conta.new
b = Conta.new

a.nome_usuario = "Latoch"
a.saldo = 50
a.limite = 500

b.nome_usuario = "Tester"
b.saldo = -232

puts a.exibirSaldo()
puts b.exibirSaldo()

a.sacar(100)
a.sacar(544)
a.depositar(423)
a.transferencia(b,500)
a.transferencia(b,500)