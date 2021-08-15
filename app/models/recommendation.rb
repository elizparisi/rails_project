class Recommendation < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :users, through: :comments
  belongs_to :category


  validates :name, :image_url, :location, :description, presence: true

  scope :alpha, -> { order (:name)}
end
