class ChangeBooleanToStringInInStorePromoters < ActiveRecord::Migration[5.0]
  def change
    change_column("in_store_promoters", "active", :string, :default => "YES")
  end
end
