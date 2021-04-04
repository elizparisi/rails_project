class RecommendationsController < ApplicationController
  before_action :redirect_if_not_logged_in

  def index
    @recommendations = Recommendation.all
  end

  def new
    @recommendation = Recommendation.new
  end

  def show
    @recommendation = Recommendation.find_by_id(params[:id])
  end

  def create
    #@recommendation = current_user.recommendations.build(recommendation_params)
    @recommendation = Recommendation.create(recommendation_params)
    @recommendation.user_id = current_user.id

    if @recommendation.save
      redirect_to recommendation_path(@recommendation)
    else
      render :new
    end

    def edit
      @recommendation = Recommendation.find_by_id(params[:id])
    end

    def update
      @recommendation = Recommendation.find_by_id(id: params[:id])
      @recommendation.update(recommendation_params)
      redirect_to recommendation_path(@recommendation)
    end

    def destroy
      @recommendation = Recommendation.find(params[:id])
      @recommendation.destroy
      redirect_to recommendations_path
    end
  end

  private

  def recommendation_params
    params.require(:recommendation).permit(:name, :image, :location, :description)
  end
end
