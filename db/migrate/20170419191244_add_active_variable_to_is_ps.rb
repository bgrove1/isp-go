class AddActiveVariableToIsPs < ActiveRecord::Migration[5.0]
  def change
    add_column("in_store_promoters", "active", :boolean, :default => true)
    add_index("in_store_promoters", "active")
  end
end
