class CreateCustomUserGenders < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_user_genders do |t|
      t.integer :custom_gender_id
      t.integer :user_id

      t.timestamps
    end
  end
end
