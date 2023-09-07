require 'swagger_helper'

RSpec.describe 'furnitures', type: :model do
  let(:user1) { User.create!(email: 'test@test.com', username: 'name', password: 'password') }
  let(:user2) { User.create!(email: 'second@test.com', username: 'second', password: 'password') }
  let(:sofa) { Furniture.create!(name: 'sofa', description: 'a sofa', price: 100, user_id: user1.id) }
  let(:appointment1) { Appointment.create!(appoint_date: '2021-01-01', user_id: user1.id, furniture_id: sofa.id) }
  let(:appointment2) { Appointment.create!(appoint_date: '2021-01-01', user_id: user2.id, furniture_id: sofa.id) }
  
  context 'associations' do
    it 'has many appointments' do
      expect(sofa.appointments).to include(appointment1)
      expect(sofa.appointments).to include(appointment2)
    end

    it 'has many users through appointments' do
      expect(appointment1.user).to eq(user1)
      expect(appointment2.user).to eq(user2)
    end
  end

  context 'validations' do
    
    it 'is valid with valid attributes' do
      expect(sofa).to be_valid
    end

    it 'is not valid without an name' do
      sofa.name = nil
      expect(sofa).to_not be_valid
    end

    it 'is not valid without a description' do
      sofa.description = nil
      expect(sofa).to_not be_valid
    end

    it 'is not valid without a password' do
      sofa.price = nil
      expect(sofa).to_not be_valid
    end
  end
end
