class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.integer :code, null: false
      t.string :registration_num, limit: 50
      t.string :name, :street, :city, :state, :postal_code, limit: 50, null: false
      t.integer :parking_spots, default: 0

      t.timestamps
    end
    add_index :buildings, :code, unique: true
  end
end
