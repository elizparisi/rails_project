module RecommendationsHelper

  def recommendation_creator
    @recommendation.user === current_user
  end
end
