class AddLeadsPerHourToIspShiftsTable < ActiveRecord::Migration[5.0]
  def up
    add_column("isp_shifts", "leads_per_hour", :float)
  end

  def down
    remove_column("isp_shifts",  "leads_per_hour")
  end
end
