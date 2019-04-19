class CreateCustomOrientations < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_orientations do |t|
      t.string :name

      t.timestamps
    end
  end
end
