class AdjustProducts < ActiveRecord::Migration[5.2]
  def change


      add_reference :products, :seller, index: true, foreign_key: true

  end
end
