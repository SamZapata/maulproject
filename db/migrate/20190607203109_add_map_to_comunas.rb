class AddMapToComunas < ActiveRecord::Migration[5.2]
  def change
    add_column :comunas, :map, :string
  end
end
