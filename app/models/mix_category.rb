class MixCategory < ApplicationRecord
  belongs_to :community
  belongs_to :site
  belongs_to :event
  belongs_to :category
end
