class DestroyOldBuyers < ActiveRecord::Migration[5.2]
  def up
    drop_table :buyers
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
