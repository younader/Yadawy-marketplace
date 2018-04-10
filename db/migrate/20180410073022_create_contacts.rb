class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :email
      t.text :context

      t.timestamps null: false
    end
  end
end
