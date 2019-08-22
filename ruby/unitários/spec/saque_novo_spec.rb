 # encoding: utf-8 
describe ContaCorrente do 

    describe 'Saque' do  

        context 'quando o valor é positivo' do 

            before(:all) do

                conta = ContaCorrente.new(1000.00)
                conta.saca(200.00)

            end
            it 'entao atualiza saldo' do

                expect(conta.saldo).to eql 800.00



            end
        end 

    end

end 