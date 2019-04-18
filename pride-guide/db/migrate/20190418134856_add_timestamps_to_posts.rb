class AddTimestampsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_timestamps :posts, null: true
    long_ago = DateTime.new(2000, 1, 1)
    Post.update_all(created_at: long_ago, updated_at: long_ago)
    change_column_null :posts, :created_at, false
    change_column_null :posts, :updated_at, false
  end
end
