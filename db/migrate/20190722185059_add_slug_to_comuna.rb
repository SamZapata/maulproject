class AddSlugToComuna < ActiveRecord::Migration[5.2]
  def change
    add_column :comunas, :slug, :string
    add_index :comunas, :slug, unique: true
  end
end
