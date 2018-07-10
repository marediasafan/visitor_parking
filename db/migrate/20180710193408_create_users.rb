class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, limit: 50, null: false
      t.string :last_name, limit: 50, null: false
      t.string :username, limit: 30, null: false
      t.string :password
      t.string :email, limit: 100
      t.string :phone, limit: 20
      t.references :building, foreign_key: true

      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end
