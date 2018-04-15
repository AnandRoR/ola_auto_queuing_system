class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :user_id, null: false
      t.integer :driver_id
      t.datetime :start_at
      t.datetime :end_at
      t.integer :status, null: false, default: 0
      t.integer :lock_version
      t.timestamps
    end
    add_index :requests, :user_id
  end
end
