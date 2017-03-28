class SetLeadsPerHourDefaultValueInAllTables < ActiveRecord::Migration[5.0]
  def change
    change_column("in_store_promoters", "leads_per_hour", :float, :default =>"0")
    change_column("isp_shifts", "leads_per_hour", :float, :default =>"0")
    change_column("marketing_managers", "leads_per_hour", :float, :default =>"0")
    change_column("stores", "leads_per_hour", :float, :default =>"0")
    change_column("territories", "leads_per_hour", :float, :default =>"0")
  end
end
