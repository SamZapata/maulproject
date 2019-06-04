class CreateSiteMauls < ActiveRecord::Migration[5.2]
  def change
    create_table :site_mauls do |t|
      t.string :name
      t.references :site, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
