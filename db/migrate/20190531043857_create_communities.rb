class CreateCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :communities do |t|
      t.string :name
      t.text :about
      t.string :address
      t.string :phone
      t.string :email
      t.integer :comuna_id

      t.timestamps
    end
  end
end
