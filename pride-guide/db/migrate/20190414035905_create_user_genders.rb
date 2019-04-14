class CreateUserGenders < ActiveRecord::Migration[5.2]
  def change
    create_table :user_genders do |t|
      t.belongs_to :user
      t.belongs_to :gender

      t.timestamps
    end
  end
end
