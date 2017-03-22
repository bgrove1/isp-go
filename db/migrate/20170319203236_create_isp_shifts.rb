class CreateIspShifts < ActiveRecord::Migration[5.0]
  def up
    create_table :isp_shifts do |t|
      t.string "in_store_promoter_id"
      t.time "time in"
      t.time "time out"
      t.date "date"
      t.string "store number"
      t.integer "Total Prospects Approached"
      t.integer "Total Presentations Given"
      t.integer "Total leads"
      t.timestamps
    end
    add_index("isp_shifts", "in_store_promoter_id")
  end

  def down
    drop_table :isp_shifts
  end


end
