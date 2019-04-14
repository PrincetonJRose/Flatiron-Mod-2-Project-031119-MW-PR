class CreateUserOrientations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_orientations do |t|
      t.belongs_to :user
      t.belongs_to :orientation

      t.timestamps
    end
  end
end
