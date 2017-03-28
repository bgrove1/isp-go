class ChangeTerritoryDataTypeInInStorePromotersTable < ActiveRecord::Migration[5.0]
  def up
    remove_column("in_store_promoters", "territory")
    add_column("in_store_promoters", "territory", :integer)
    add_index("in_store_promoters", "territory")
  end

  def down
    remove_column("in_store_promoters", "territory")
    add_column("in_store_promoters", "territory")
  end
end
