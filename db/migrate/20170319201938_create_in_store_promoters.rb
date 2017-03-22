class CreateInStorePromoters < ActiveRecord::Migration[5.0]
  def change
    create_table :in_store_promoters do |t|
      t.string :firstname
      t.string :lastname
      t.string :territory
      t.float :leadsperhour

      t.timestamps
    end
  end
end
