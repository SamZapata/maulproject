class AddSocialMediaToSites < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :facebook, :string
    add_column :sites, :instagram, :string
    add_column :sites, :twitter, :string
    add_column :sites, :youtube, :string
  end
end
