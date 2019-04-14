class CreateUserPronouns < ActiveRecord::Migration[5.2]
  def change
    create_table :user_pronouns do |t|
      t.belongs_to :user
      t.belongs_to :pronoun

      t.timestamps
    end
  end
end
