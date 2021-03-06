Specs:

 [x] Using Ruby on Rails for the project
 [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) (User has_many Recommendations)
 [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) (Recommendation belongs_to User)
 [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) (User has_many Recommendations through Comments, Recommendation has_many Users through Comments)
 [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) (User has_many :recommendations, through: :comments)
 [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) (Comments have title and content)
 [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) (presence for all, uniquess some)
 [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) (scope :alpha, list Recommendations by name)
 [x] Include signup (how e.g. Devise)
 [x] Include login (how e.g. Devise)
 [x] Include logout (how e.g. Devise)
 [x] Include third party signup/login (how e.g. Devise/OmniAuth) (Github oauth)
 [x] Include nested resource show or index (URL e.g. users/2/recipes) (recommendations/1/comments)
 [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) (recommendations/1/comments/new)
 [x] Include form display of validation errors (form URL e.g. /recipes/new) (attributes can't be blank)
Confirm:

 [x] The application is pretty DRY
 [x] Limited logic in controllers
 [x] Views use helper methods if appropriate
 [x] Views use partials if appropriate
