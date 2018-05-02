class AddImageToBuyerinfo < ActiveRecord::Migration[5.2]
  def change
    add_column :buyerinfos, :image, :string
  end
end
