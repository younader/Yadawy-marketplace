class CreateSellerinfos < ActiveRecord::Migration[5.2]
  def change
    create_table :sellerinfos do |t|
      t.string :first_name
      t.string :last_name
      t.text :address
      t.integer :phone_number;
      t.integer :gender
      t.string :city
      t.references :seller, foreign_key: true

      t.timestamps
    end
  end
end
