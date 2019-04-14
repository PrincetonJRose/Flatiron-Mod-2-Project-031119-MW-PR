class CreateResourceServices < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_services do |t|
      t.belongs_to :service
      t.belongs_to :resource

      t.timestamps
    end
  end
end
