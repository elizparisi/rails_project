class User < ApplicationRecord

  has_many :recommendations
  has_many :comments
  has_many :commented_recommendations, through: :comments, source: :recommendation
  has_secure_password

  validates :username, :email, presence: true
end
