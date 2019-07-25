class AddSlugToCommunity < ActiveRecord::Migration[5.2]
  def change
    add_column :communities, :slug, :string
    add_index :communities, :slug, unique: true
  end
end
