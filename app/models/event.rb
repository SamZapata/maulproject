class Event < ApplicationRecord

  belongs_to :comuna, class_name: 'Comuna', optional: true
  belongs_to :user, class_name: 'User', optional: true

  has_many :mix_categories
  has_many :communities, through: :community_mauls

  has_many :site_mauls
  has_many :sites, through: :site_mauls

  has_many :mix_categories
  has_many :categories, through: :mix_categories
end
