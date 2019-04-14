class CreateResouceGenders < ActiveRecord::Migration[5.2]
  def change
    create_table :resouce_genders do |t|
      t.belongs_to :gender
      t.belongs_to :resource

      t.timestamps
    end
  end
end
