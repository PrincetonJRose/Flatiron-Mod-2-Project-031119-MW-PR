class CreateUserGenders < ActiveRecord::Migration[5.2]
  def change
    create_table :user_genders do |t|
      t.integer   :user_id
      t.integer   :gender_id

      t.timestamps
    end
  end
end
