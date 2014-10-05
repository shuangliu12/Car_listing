class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :manufacturer_id, null: false
      t.string :color, null:false
      t.integer :mileage, null: false
      t.string :description

      t.timestamps
    end
  end
end
