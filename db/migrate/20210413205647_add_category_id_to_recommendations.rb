class AddCategoryIdToRecommendations < ActiveRecord::Migration[6.0]
  def change
    add_column :recommendations, :category_id, :integer
  end
end
