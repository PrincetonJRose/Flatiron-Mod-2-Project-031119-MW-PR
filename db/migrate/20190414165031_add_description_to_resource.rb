class AddDescriptionToResource < ActiveRecord::Migration[5.2]
  def change
    add_column :resources, :description, :text
  end
end
