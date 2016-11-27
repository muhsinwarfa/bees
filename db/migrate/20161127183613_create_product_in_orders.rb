class CreateProductInOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :product_in_orders do |t|
      t.integer :product_id
      t.integer :order_id

      t.timestamps
    end
  end
end
