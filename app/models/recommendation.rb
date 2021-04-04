class Recommendation < ApplicationRecord

  belongs_to :user
  has_many :comments
  has_many :users, through: :comments

  has_one_attached :image

  validates :name, :location, :description, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  validates :image, attached: true
end
