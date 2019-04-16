class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.integer :friend_id
      t.integer :friender_id

      t.timestamps
    end
    add_index :friends, :friend_id
    add_index :friends, :friender_id
    add_index :friends, [:friend_id, :friender_id], unique: true
  end
end
