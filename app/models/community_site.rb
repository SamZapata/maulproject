class CommunitySite < ApplicationRecord
  belongs_to :communities, class_name: 'Community'
  belongs_to :sites, class_name: 'Site'
end
