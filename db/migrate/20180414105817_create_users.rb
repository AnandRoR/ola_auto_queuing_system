class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :indentifier
      t.string :first_name
      t.string :last_name
      t.string :type
      t.timestamps
    end
    add_index :users, :indentifier
  end
end
