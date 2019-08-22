class Veiculos
 attr_accessor  :nome, :marca, :modelo

 def initialize (nome, marca, modelo)

    self.nome = nome
    self.marca = marca
    self.modelo = modelo

 end 

 def ligar

    puts    "O #{nome} está pronto para dar a partida"

 end 
 def buzinar

    puts 'Beep!, Beep!'

 end 
end 

class Carro < Veiculos

    def dirigir

        puts "#{nome} iniciando o trajeto"
    end 
end
class Moto < Veiculos

    def pilotar

        puts "#{nome} iniciando o trajeto"
    end 
end 

civic = Carro.new('Civic', 'Honda', 'SI')
civic.ligar
civic.buzinar
civic.dirigir

lancer = Carro.new('Lancer', 'Mitsubishi', 'EVO')
lancer.ligar
lancer.buzinar

Xre = Moto.new('XRE', 'Honda', '300')
Xre.ligar
Xre.buzinar
Xre.pilotar
