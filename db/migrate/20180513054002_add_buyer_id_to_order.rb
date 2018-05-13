class AddBuyerIdToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :buyer, foreign_key: true
  end
end
