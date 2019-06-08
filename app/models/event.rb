class Event < ApplicationRecord

  belongs_to :comunas
  
  has_many :mix_categories
  has_many :communities, through: :community_mauls

  has_many :site_mauls
  has_many :sites, through: :site_mauls

  has_many :mix_categories
  has_many :categories, through: :mix_categories
end
