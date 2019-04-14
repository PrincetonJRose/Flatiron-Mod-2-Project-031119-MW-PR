class CreateResourceOrientations < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_orientations do |t|
      t.belongs_to :orientation
      t.belongs_to :resource

      t.timestamps
    end
  end
end
