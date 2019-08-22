describe 'Caixa de seleção', :dropdown do #(:dropdown =  tagueamento )

   it 'item especifico simples' do #nome do cenário
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
     select('Loki', from: 'dropdown') #seleciona a opção(loki) e o tipo do elemento(dropdown)

     sleep 3 #temporario 

   end 
end