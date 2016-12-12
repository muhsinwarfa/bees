class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :distance
      t.string :driverName
      t.string :plateNumber
      t.string :carType
      t.string :modelMake
      t.integer :queue

      t.timestamps
    end
  end
end
