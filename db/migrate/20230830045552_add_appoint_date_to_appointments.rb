class AddAppointDateToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :appoint_date, :date
  end
end
