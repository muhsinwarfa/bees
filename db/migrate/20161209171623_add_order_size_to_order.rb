class AddOrderSizeToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :order_size, :string
  end
end
