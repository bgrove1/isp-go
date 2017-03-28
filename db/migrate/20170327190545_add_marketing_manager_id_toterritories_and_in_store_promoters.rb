class AddMarketingManagerIdToterritoriesAndInStorePromoters < ActiveRecord::Migration[5.0]
  def change
    add_column("in_store_promoters", "marketing_manager_id", :integer, :default => "1")
    add_column("territories", "marketing_manager_id", :integer, :default => "1")
    add_index("in_store_promoters","marketing_manager_id")
    add_index("territories", "marketing_manager_id")
  end
end
