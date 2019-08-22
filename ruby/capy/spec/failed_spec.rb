describe 'Failed' do


    it 'senha incorreta' do

                
     visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'teste'

        click_button 'Login'

        expect(find('#flash.flash.error').visible?).to be true
        expect(find('#flash.flash.error').text).to include 'Senha é invalida!'

    end 
end 