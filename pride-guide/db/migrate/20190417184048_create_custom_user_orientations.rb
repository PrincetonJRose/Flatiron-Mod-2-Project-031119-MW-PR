class CreateCustomUserOrientations < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_user_orientations do |t|
      t.integer :custom_orientation_id
      t.integer :user_id

      t.timestamps
    end
  end
end
