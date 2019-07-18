class Community < ApplicationRecord
  # has_many :community_sites, class_name: 'CommunitySite'
  # has_many :sites, through: :community_sites
  belongs_to :comuna, class_name: 'Comuna', optional: true
  belongs_to :user, class_name: 'User'

  has_many :maul_plans
  has_many :sites, through: :maul_plans

  has_many :community_mauls
  has_many :events, through: :community_mauls

  has_many :mix_categories
  has_many :categories, through: :mix_categories
end
