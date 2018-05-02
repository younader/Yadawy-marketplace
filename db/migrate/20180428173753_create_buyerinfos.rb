class CreateBuyerinfos < ActiveRecord::Migration[5.2]
  def change
    create_table :buyerinfos do |t|
      t.string :fname
      t.string :lname
      t.string :address
      t.integer :phone
      t.references :buyer, index: true, foreign_key: true , null: false

      t.timestamps null: false
    end
  end
end
