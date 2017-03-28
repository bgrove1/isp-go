class RenameTerritoryToTerritoryIdInInStorePromotersTable < ActiveRecord::Migration[5.0]
  def up
    remove_index(:in_store_promoters, :name =>  'index_in_store_promoters_on_territory')
    rename_column("in_store_promoters", "territory", "territory_id")
    add_index("in_store_promoters", "territory_id")
  end

  def down
    remove_index(:in_store_promoters, :name => 'index_in_store_promoters_on_territory_id')
    rename_column("in_store_promoters", "territory_id", "territory")
    add_index("in_store_promoters", "territory")
  end
end
