class AddSlugToSite < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :slug, :string
    add_index :sites, :slug, unique: true
  end
end
