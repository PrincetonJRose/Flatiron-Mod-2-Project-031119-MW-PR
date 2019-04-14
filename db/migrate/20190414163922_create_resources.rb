class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :number
      t.string :url
      t.string :address
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
