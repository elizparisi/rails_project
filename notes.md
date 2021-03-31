An app that acts as a discovery guide, a user can create or search for recommendations on a variety of things. A user can edit or delete recommendations they created, and they can comment on another user's recommendation.

Models: (relationships)

User
  has_many :recommendations
  has_many :comments
  has_many :recommended_items, through :comments, source :recommendation
