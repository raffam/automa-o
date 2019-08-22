class Conta 
    attr_accessor :saldo, :nome

def initialize (nome)   #Construtor
 
    self.saldo = 0.0
    self.nome = nome

end 

    def Depositar (valor)

      self.saldo += valor  

        #puts 'O valor depositado é de' + valor.to_s + 'reais'
        puts "Depositando a quantia de : #{valor} reais na conta de #{nome}" #interpolação

    end 

end

c = Conta.new ('Rafael')
c.Depositar(100.00)
c.Depositar(10.0)

puts  c.nome.to_s +   '  seu saldo é: ' + c.saldo.to_s