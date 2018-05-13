class AddGenderToBuyers < ActiveRecord::Migration[5.2]
  def change
    add_column :buyerinfos, :gender, :integer
  end
end
