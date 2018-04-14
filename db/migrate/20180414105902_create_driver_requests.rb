class CreateDriverRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :driver_requests do |t|
      t.integer :driver_id, null: false
      t.integer :request_id, null: false
      t.timestamps
    end
  end
end
