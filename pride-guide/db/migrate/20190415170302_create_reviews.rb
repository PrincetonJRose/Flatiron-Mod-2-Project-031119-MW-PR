class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :resource, foreign_key: true
      t.integer :rating
      t.text :content
    end
  end
end
