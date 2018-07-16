class AddCountryToBuildings < ActiveRecord::Migration[5.2]
  def change
    add_column :buildings, :country, :string, limit: 50
  end
end
