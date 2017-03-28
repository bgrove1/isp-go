class ChangeStoreNumberToStoreIdInIspShifts < ActiveRecord::Migration[5.0]
  def up
    rename_column("isp_shifts", "store_number", "store_id")
    add_index("isp_shifts", "store_id")
  end

  def down
    rename_column("isp_shifts", "store_id", "store_number")
  end
end
