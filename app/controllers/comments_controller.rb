class CommentsController < ApplicationController

  def index
    #check to see if it's nested (is there a recommendation id?)
    if params[:recommendation_id] && @recommendation = Recommendation.find_by_id(params[:recommendation_id])
      #comments are nested
      @comments = @recommendation.comments
    else
      #not nested 
      @comments = Comment.all
    end
  end

  def new
    @comment = Comment.new
  end

  def create

  end

  def show
  end
end
