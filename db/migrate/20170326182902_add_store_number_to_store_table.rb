class AddStoreNumberToStoreTable < ActiveRecord::Migration[5.0]
  def up
    add_column("stores", "store_number", :integer)
  end

  def down
    remove_column("stores", "store_number")
  end
end
