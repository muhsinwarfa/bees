class AddColumnsToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :address, :string
    add_column :orders, :customer_name, :string
    add_column :orders, :customer_number, :string
    add_column :orders, :latitude, :float
    add_column :orders, :longitude, :float
  end
end
