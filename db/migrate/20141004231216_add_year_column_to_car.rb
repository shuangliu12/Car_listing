class AddYearColumnToCar < ActiveRecord::Migration
  def change
    add_column :cars, :year, :integer, null:false
  end
end
