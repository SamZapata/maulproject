class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # extend FriendlyId
  # friendly_id :name, use: :slugged

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_one :profile, depent: :destroy
  has_one :profile
  after_create :create_profile

  has_many :community, class_name: 'Community'
  has_many :site, class_name: 'Site'
  has_many :event, class_name: 'Event'

  def create_profile
    Profile.create(user: self)
  end

end
