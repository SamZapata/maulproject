class Site < ApplicationRecord
  # has_many :community_sites, class_name: 'CommunitySite'
  # has_many :communities, through: :community_sites
  belongs_to :comuna, class_name: 'Comuna', optional: true

  has_many :maul_plans
  has_many :communities, through: :maul_plans
  accepts_nested_attributes_for :communities, allow_destroy: true

  has_many :site_mauls
  has_many :events, through: :site_mauls

  has_many :mix_categories
  has_many :categories, through: :mix_categories
end
