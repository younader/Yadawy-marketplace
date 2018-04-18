class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.string :seller
      t.string :specs
      t.string :image

      t.timestamps null: false
    end
  end
end
