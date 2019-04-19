class CreateCustomPronouns < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_pronouns do |t|
      t.string :name

      t.timestamps
    end
  end
end
