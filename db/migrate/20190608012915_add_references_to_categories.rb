class AddReferencesToCategories < ActiveRecord::Migration[5.2]
  def change
    add_reference :categories, :site, foreign_key: true
    add_reference :categories, :community, foreign_key: true
    add_reference :categories, :event, foreign_key: true
  end
end
