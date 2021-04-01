class RecommendationsController < ApplicationController

  def index
    @recommendations = Recommendation.all
  end

  def new
    @recommendation = Recommendation.new
  end

  def create
    @recommendation = current_user.recommendations.build(recommendation_params)
    if recommendation.save
      redirect_to recommendation_path(@recommendation)
    else
      render :new
    end
  end

  private

  def recommendation_params
    params.require(:recommendation).permit(:name, :image, :location, :description)
  end
end
