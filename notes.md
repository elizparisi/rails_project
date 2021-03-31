An app that acts as a discovery guide, a user can create or search for recommendations on a variety of things. A user can edit or delete recommendations they created, and they can comment on another user's recommendation.

Models: (relationships)

User
  has_many :recommendations
  has_many :comments
  has_many :recommended_items, through :comments, source :recommendation

  username:string
  email:string
  password_digest:string

Recommendation
  belongs_to :user
  has_many :comments
  has_many :users, through :comments

  category:string
  image_url:string
  name:string
  location:string
  description:text

Comment
  belongs_to :user
  belongs_to :recommendation

  title:string
  content:text
