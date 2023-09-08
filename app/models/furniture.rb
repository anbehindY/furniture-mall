class Furniture < ApplicationRecord
  has_many :appointments, foreign_key: 'furniture_id', dependent: :destroy
  has_many :users, through: :appointments
  validates :name, :description, :price, presence: true
end
