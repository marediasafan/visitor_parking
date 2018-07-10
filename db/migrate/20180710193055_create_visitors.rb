class CreateVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table :visitors do |t|
      t.string :apt_num, limit: 11
      t.string :phone, limit: 20
      t.string :license_plate, limit: 20
      t.references :building, foreign_key: true

      t.timestamps
    end
  end
end
