class CreateComunas < ActiveRecord::Migration[5.2]
  def change
    create_table :comunas do |t|
      t.string :name
      t.text :abotu
      t.string :link

      t.timestamps
    end
  end
end
