class FixIspShiftsTable < ActiveRecord::Migration[5.0]
  def up
    rename_column("isp_shifts", "time in", "time_in")
    rename_column("isp_shifts", "time out", "time_out")
    rename_column("isp_shifts", "store number", "store_number")
    rename_column("isp_shifts", "Total Prospects Approached", "prospects_approached")
    rename_column("isp_shifts", "Total Presentations Given", "presentations_given")
    rename_column("isp_shifts", "Total leads", "leads")
  end

  def down
    rename_column("isp_shifts", "leads", "Total leads")
    rename_column("isp_shifts", "presentations_given", "Total Presentations Given")
    rename_column("isp_shifts", "prospects_approached", "Total Prospects Approached")
    rename_column("isp_shifts", "store_number", "store number")
    rename_column("isp_shifts", "time_out", "time out")
    rename_column("isp_shifts", "time_in", "time in")
  end
end
