class CreateCommunityMauls < ActiveRecord::Migration[5.2]
  def change
    create_table :community_mauls do |t|
      t.string :name
      t.references :community, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
