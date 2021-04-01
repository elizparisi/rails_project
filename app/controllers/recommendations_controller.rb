class RecommendationsController < ApplicationController

  def index
    @recommendations = Recommendation.all
  end

  def new
    @recommendation = Recommendation.new
  end

  private

  def recommendation_params
    params.require(:recommendation).permit(:name, :image_url, :location, :description)
  end
end
