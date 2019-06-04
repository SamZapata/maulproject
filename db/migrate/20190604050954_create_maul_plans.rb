class CreateMaulPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :maul_plans do |t|
      t.references :community, foreign_key: true
      t.references :site, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
