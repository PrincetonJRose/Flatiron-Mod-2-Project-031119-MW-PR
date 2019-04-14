class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string    :username
      t.string    :email
      t.string    :password
      t.date      :birthdate
      t.string    :city
      t.string    :state
      t.text      :bio
      t.boolean   :hidden, default: false
      t.boolean   :verified, default: false
      t.boolean   :admin, default: false
      t.boolean   :moderator, default: false
      t.timestamps
    end
  end
end
