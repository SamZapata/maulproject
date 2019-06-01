class AddSocialMediaToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :facebook, :string
    add_column :events, :other_link, :string
  end
end
