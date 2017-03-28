class CreateMarketingManagers < ActiveRecord::Migration[5.0]
  def change
    create_table :marketing_managers do |t|
      t.string :first_name, :limit => 25
      t.string :last_name, :limit => 50
      t.string :email, :default =>'', :null => false
      t.string :username, :string, :limit => 25
      t.string :password_digest
      t.float :leads_per_hour

      t.timestamps
    end
  end
end
