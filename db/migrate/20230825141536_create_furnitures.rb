class CreateFurnitures < ActiveRecord::Migration[7.0]
  def change
    create_table :furnitures do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.string :image
      t.text :description
      t.decimal :price, default: nil, precision: 10, scale: 2
      t.integer :warranty

      t.timestamps
    end
  end
end
