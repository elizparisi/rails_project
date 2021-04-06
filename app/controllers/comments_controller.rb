class CommentsController < ApplicationController
  before_action :redirect_if_not_logged_in
  before_action :get_recommendation


  def index
    @comments = @recommendation.comments
  end

  def show
  end

  def new
    @comment = @recommendation.comments.build
    # if it's nested and we find the recommendation
    #if params[:recommendation_id] && @recommendation = Recommendation.find_by_id(params[:recommendation_id])
    #  @comment = @recommendation.comments.build
    #else
    #  @comment = Comment.new
    #end
  end

  def create
    #@comment = @recommendation.comments.build
    @recommendation = Recommendation.find(params[:comment][:recommendation_id])
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      redirect_to recommendation_comments_path
    else
      render :new
    end
  end


  private

  def set_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def get_recommendation
    @recommendation = Recommendation.find(params[:recommendation_id])
  end

  def comment_params
    params.require(:comment).permit(:title, :content, :recommendation_id)
  end
end
