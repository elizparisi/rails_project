class RecommendationsController < ApplicationController
  before_action :redirect_if_not_logged_in

  def index
    @recommendations = Recommendation.all
  end

  def new
    @recommendation = Recommendation.new
  end

  def create
    @recommendation = current_user.recommendations.build(recommendation_params)

    if @recommendation.save
      redirect_to recommendation_path(@recommendation)
    else
      render :new
    end

  def show
    @recommendation = Recommendation.find_by_id(params[:id])
  end

  def edit
    @recommendation = Recommendation.find(params[:id])
  end

  def update
     @recommendation = current_user.recommendations.find(params[:id])

    if @recommendation.update(recommendation_params)
      redirect_to recommendation_path(@recommendation)
    else
      render :edit
    end
  end

  def destroy
    @recommendation = Recommendation.find(params[:id])
    @recommendation.destroy
      redirect_to recommendations_path
    end
  end

  private

  def recommendation_params
    params.require(:recommendation).permit(:name, :image_url, :location, :description)
  end
end
