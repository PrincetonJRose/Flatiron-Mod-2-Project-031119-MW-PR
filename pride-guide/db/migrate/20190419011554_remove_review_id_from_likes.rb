class RemoveReviewIdFromLikes < ActiveRecord::Migration[5.2]
  def change
    remove_column :likes, :review_id
  end
end
