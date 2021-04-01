class Recommendation < ApplicationRecord

  belongs_to :user
  has_many :comments
  has_many :users, through: :comments

  has_one_attached :image 
end
