class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.date :birthdate
      t.text :about_me

      t.timestamps
    end
  end
end
