class CommentsController < ApplicationController

  def index
    #check to see if it's nested (is there a recommendation id?) & is the id good data?
    if params[:recommendation_id] && @recommendation = Recommendation.find_by_id(params[:recommendation_id])
      #nested comments
      @comments = @recommendation.comments
    else
      @comments = Comment.all
    end
  end

  def new
    # if it's nested and we find the recommendation
    if params[:recommendation_id] && @recommendation = Recommendation.find_by_id(params[:recommendation_id])
      @comment = @recommendation.comments.build
    else
      @comment = Comment.new
    end
  end

  def create
    @comment = current_user.comments.build(comment_params)

    if @comment.save
      redirect_to comments_path
    else
      render :new
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:title, :content, :recommendation_id)
  end
end
