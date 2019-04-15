class CreateResourceGenders < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_genders do |t|
      t.belongs_to :gender, foreign_key: true
      t.belongs_to :resource, foreign_key: true

      t.timestamps
    end
  end
end
