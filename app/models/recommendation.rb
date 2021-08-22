class Recommendation < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :users, through: :comments
  # belongs_to :category

  has_one_attached :image


  validates :name, :image, :location, :description, presence: true

  scope :alpha, -> { order (:name)}
end
