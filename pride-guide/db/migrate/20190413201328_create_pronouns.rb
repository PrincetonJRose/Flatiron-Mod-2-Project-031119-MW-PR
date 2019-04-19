class CreatePronouns < ActiveRecord::Migration[5.2]
  def change
    create_table :pronouns do |t|
      t.string    :name

      t.timestamps
    end
  end
end
