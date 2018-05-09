class AddCityToBuyerinfo < ActiveRecord::Migration[5.2]
  def change
    add_column :buyerinfos, :city, :string
  end
end
