class Furniture < ApplicationRecord
  belongs_to :user
  has_many :appointments
  validates :name, :description, :price, presence: true
end
