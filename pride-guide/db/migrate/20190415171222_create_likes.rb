class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :post, foreign_key: true
      t.belongs_to :review, foreign_key: true
      # t.string :name
      # t.references :imageable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
