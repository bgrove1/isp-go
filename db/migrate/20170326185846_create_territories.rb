class CreateTerritories < ActiveRecord::Migration[5.0]
  def change
    create_table :territories do |t|
      t.string :name
      t.string :dsm
      t.float :leads_per_hour
      t.integer :number_of_stores
      t.integer :number_of_hours_worked
      t.integer :number_of_active_isps

      t.timestamps
    end
  end
end
