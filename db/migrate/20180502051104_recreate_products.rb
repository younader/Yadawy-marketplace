class RecreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name     ,null:false
      t.string :category

      t.string :specs
      t.string :image
      t.integer :price
      t.timestamps null: false
    end
  end
end
