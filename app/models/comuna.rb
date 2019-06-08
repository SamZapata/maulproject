class Comuna < ApplicationRecord
  has_many :community
  has_many :site
  has_many :event
end
