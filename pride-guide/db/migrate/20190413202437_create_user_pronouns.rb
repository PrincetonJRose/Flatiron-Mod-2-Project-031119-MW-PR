class CreateUserPronouns < ActiveRecord::Migration[5.2]
  def change
    create_table :user_pronouns do |t|
      t.integer   :user_id
      t.integer   :pronoun_id

      t.timestamps
    end
  end
end
