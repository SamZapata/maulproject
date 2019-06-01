class AddSocialMediaToCommunities < ActiveRecord::Migration[5.2]
  def change
    add_column :communities, :facebook, :string
    add_column :communities, :instagram, :string
    add_column :communities, :twitter, :string
    add_column :communities, :youtube, :string
  end
end
