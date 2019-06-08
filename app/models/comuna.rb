class Comuna < ApplicationRecord
  has_many :community, class_name: 'Community'
  has_many :site
  has_many :event
end
