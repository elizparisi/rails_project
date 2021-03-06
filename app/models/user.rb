class User < ApplicationRecord

  has_many :recommendations
  has_many :comments
  has_many :commented_recommendations, through: :comments, source: :recommendation
  has_secure_password

  validates :username, :email, presence: true
  validates :username, uniqueness: true 

  def self.create_from_omniauth(auth)
    User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
        u.username = auth['info']['first_name']
        u.email = auth['info']['email']
        u.password = SecureRandom.hex(16)
    end
  end
end
