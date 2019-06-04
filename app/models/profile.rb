class Profile < ApplicationRecord
  belongs_to :user
  # validates_uniqueness_of :user_id
  # validates_uniqueness_of :profile, scope: :nickname, :message => "Nombre de usuario no disponible"
  # validate :nickname_uniqueness

  # protected
  
  # def nickname_uniqueness
  #   errors.add(:nickname, 'Nombre de usuario no disponible') if Profile.where('nickname' => nickname).exists?
  # end
end
