class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :territory_id
      t.string :name
      t.string :manager
      t.string :phone_number
      t.integer :leads_per_hour

      t.timestamps
    end
  end
end
