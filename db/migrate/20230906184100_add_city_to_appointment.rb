class AddCityToAppointment < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :city, :string
  end
end
