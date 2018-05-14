require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  
  context 'Validation params' do
    it 'ensure firstname presence' do 
      user = User.new(lastname: 'last', email: 'test@test.fr').save
      expect(user).to eq(false)
    end

    it 'ensure lastname presence' do
      user = User.new(firstname: 'first', email: 'test@test.fr').save
      expect(user).to eq(false)   
    end

    it 'ensure email presence' do 
      user = User.new(lastname: 'last', firstname: 'first').save
      expect(user).to eq(false)
    end

    it 'should save successfully' do 
      user = User.new(firstname: 'first', lastname: 'last', email: 'test@test.fr').valid?
      expect(user).to eq(true)
    end
  end

    context 'scope tests' do 
    end
end




#Tu vas commencer par les tests de modèles : il faut tester qu'il soit impossible 
#de créer un user en base sans les bons paramètres (il faut tester d'envoyer un prénom 
#vide, ET un prénom qui ne contient que des espaces). Aussi, impossible de créer un user 
#qui a le même email qu'un autre user.

