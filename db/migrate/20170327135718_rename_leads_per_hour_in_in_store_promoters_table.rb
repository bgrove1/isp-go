class RenameLeadsPerHourInInStorePromotersTable < ActiveRecord::Migration[5.0]
  def up
    rename_column("in_store_promoters", "leadsperhour", "leads_per_hour")
  end

  def down
    rename_column("in_store_promoters", "leads_per_hour", "leadsperhour")
  end
end
