class Category < ApplicationRecord
  has_many :mix_categories
  has_many :communities, through: :mix_categories

  has_many :mix_categories
  has_many :sites, through: :mix_categories

  has_many :mix_categories
  has_many :events, through: :mix_categories
end
