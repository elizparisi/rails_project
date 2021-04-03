class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :recommendation

  validates :content, presence: true
  validates :post, uniqueness: {scope: :user_id, message: "Only one comment please!"}
end
