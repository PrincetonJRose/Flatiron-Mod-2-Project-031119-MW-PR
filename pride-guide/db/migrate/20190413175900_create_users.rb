class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string    :username
      t.string    :email
      t.string    :password
      t.date      :birthdate
      t.string    :city
      t.integer   :state_id
      t.text      :bio
      t.boolean   :verified, default: false
      t.boolean   :admin, default: false
      t.boolean   :moderator, default: false
      t.boolean   :online
      t.string    :online_status, default: "Online"
      t.boolean   :private_profile, default: false
      t.timestamps
    end
  end
end
