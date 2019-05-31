class AddWebsiteToCommunity < ActiveRecord::Migration[5.2]
  def change
    add_column :communities, :website, :string
    add_column :communities, :string, :string
  end
end
