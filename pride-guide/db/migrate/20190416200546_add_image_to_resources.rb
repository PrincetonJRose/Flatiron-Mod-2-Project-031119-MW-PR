class AddImageToResources < ActiveRecord::Migration[5.2]
  def change
    add_column :resources, :image, :string
  end
end
