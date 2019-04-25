class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :address
      t.string :map
      t.string :phone
      t.text :about

      t.timestamps
    end
  end
end
