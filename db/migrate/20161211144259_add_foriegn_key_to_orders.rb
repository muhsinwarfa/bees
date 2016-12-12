class AddForiegnKeyToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :vehicles_id, :integer
  end
end
