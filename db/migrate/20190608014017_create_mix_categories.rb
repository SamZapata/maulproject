class CreateMixCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :mix_categories do |t|
      t.string :title
      t.references :category, foreign_key: true
      t.references :community, foreign_key: true
      t.references :site, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
