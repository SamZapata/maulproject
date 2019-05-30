class AddLinkToSites < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :link, :string
  end
end
