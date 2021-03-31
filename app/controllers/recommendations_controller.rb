class RecommendationsController < ApplicationController

  def index
    @recommendations = Recommendation.all
  end

  def new
    @recommendation = Recommendation.new
  end
end
