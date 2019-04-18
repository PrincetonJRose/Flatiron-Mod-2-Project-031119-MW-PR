class CreateCustomUserPronouns < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_user_pronouns do |t|
      t.integer :custom_pronoun_id
      t.integer :user_id

      t.timestamps
    end
  end
end
