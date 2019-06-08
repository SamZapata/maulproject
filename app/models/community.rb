class Community < ApplicationRecord
  # has_many :community_sites, class_name: 'CommunitySite'
  # has_many :sites, through: :community_sites
  # accepts_nested_attributes_for :community_sites, allow_destroy: true
  belongs_to :comunas
  
  has_many :maul_plans
  has_many :sites, through: :maul_plans

  has_many :community_mauls
  has_many :events, through: :community_mauls

  has_many :mix_categories
  has_many :categories, through: :mix_categories
end
