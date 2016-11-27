class CreateProductAndCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :product_and_customers do |t|
      t.integer :customer_id
      t.integer :product_id

      t.timestamps
    end
  end
end
