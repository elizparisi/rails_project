module RecommendationsHelper

  def recommendation_creator
    @recommendation.user_id === current_user.id
  end
end
