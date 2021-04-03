class CommentsController < ApplicationController

  def index
    #check to see if it's nested (is there a recommendation id?) & is the id good data?
    if params[:recommendation_id] && @recommendation = Recommendation.find_by_id(params[:recommendation_id])
      #nested comments
      @comments = @recommendation.comments
    else
      @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create

  end

  def show
  end
end
