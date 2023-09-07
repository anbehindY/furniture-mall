require 'swagger_helper'

RSpec.describe User, type: :model do
  let(:user1) { User.create!(email: 'test@test.com', username: 'name', password: 'password') }
  let(:sofa) { Furniture.create!(name: 'sofa', description: 'a sofa', price: 100, user_id: user1.id) }
  let(:chair) { Furniture.create!(name: 'chair', description: 'a chair', price: 50, user_id: user1.id) }
  let(:appointment1) { Appointment.create!(appoint_date: '2021-01-01', user_id: user1.id, furniture_id: sofa.id) }
  let(:appointment2) { Appointment.create!(appoint_date: '2020-01-01', user_id: user1.id, furniture_id: chair.id) }

  context 'validations' do
    it 'is valid with valid attributes' do
      expect(user1).to be_valid
    end

    it 'is not valid without an email' do
      user1.email = nil
      expect(user1).to_not be_valid
    end

    it 'is not valid without a username' do
      user1.username = nil
      expect(user1).to_not be_valid
    end

    it 'is not valid without a password' do
      user1.password = nil
      expect(user1).to_not be_valid
    end
  end

  context 'associations' do
    it 'has many furnitures thorugh the appointments' do
      expect(appointment1.furniture).to eq(sofa)
      expect(appointment2.furniture).to eq(chair)
    end

    it 'has many appointments' do
      expect(user1.appointments).to include(appointment2)
    end
  end
end
