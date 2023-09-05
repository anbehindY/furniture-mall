class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :furniture
  validates :appoint_date, presence: true
end
