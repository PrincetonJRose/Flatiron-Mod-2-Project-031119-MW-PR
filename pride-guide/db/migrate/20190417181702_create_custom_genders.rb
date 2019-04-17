class CreateCustomGenders < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_genders do |t|
      t.string :name

      t.timestamps
    end
  end
end
