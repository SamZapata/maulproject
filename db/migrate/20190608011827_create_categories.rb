class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title
      t.text :about
      t.string :type

      t.timestamps
    end
  end
end
