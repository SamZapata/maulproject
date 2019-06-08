class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :start_date
      t.datetime :final_date
      t.integer :comuna_id

      t.timestamps
    end
  end
end
