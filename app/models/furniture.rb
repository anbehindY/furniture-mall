class Furniture < ApplicationRecord
  has_many :appointments
  has_many :users, through: :appointments
  validates :name, :description, :price, presence: true
end
