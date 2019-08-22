#Criando a classe Avengers Head Quarter
class AvengersHeadQuarter

#acessor para criar um metodo para adicionar uma lista
    attr_accessor :list 
#Construtor initialize
    def initialize 

        self.list =  []

    end 

#Função PUT para adicionar a lista com o parametro avenger
    def put(avenger)

        self.list.push(avenger)
    end 

end 

# TDD  ((Desenvolvimento Guiado por Teste))
describe AvengersHeadQuarter do 

    it 'deve adicionar um vingador' do 

     #Criando um novo objeto HQ
        hq = AvengersHeadQuarter.new

            hq.put('Spiderman')
            expect(hq.list).to eql ['Spiderman']

    end

             it 'deve adicionar uma lista de vingadores' do 

                hq = AvengersHeadQuarter.new
#Adicionando os nomes a lista 

                 hq.put('Thor')
                 hq.put ('Iroman')
                     hq.put ('Capitão América')

#expect(hq.list).to include 'Thor', 'Iroman' # Método (Include) confirma que os nomes foram adicionados a lista
             expect(hq.list.size).to be > 0    # Método (size) faz uma dupla validação, se os dados foram adicionados e se o objeto não for uma lista vai falhar
end 


#Matchers
         it 'deve conter o sobrenome' do


            avenger = 'Peter Parker'

            expect(avenger).to match (/Parker/) #Valida se possui o sobrenome
            expect(avenger).not_to match (/Monteiro/) #Valida se não possui o sobrenome

end 

end 