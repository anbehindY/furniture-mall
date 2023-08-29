class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :furniture, null: false, foreign_key: true
      t.datetime :appoint_date

      t.timestamps
    end
  end
end
