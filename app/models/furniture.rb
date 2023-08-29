class Furniture < ApplicationRecord
  belongs_to :user
  has_many :appointments
end
