class ChangeLinkSite < ActiveRecord::Migration[5.2]
  def change
    rename_column :sites, :link, :website
  end
end
