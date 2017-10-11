class CommentsController < ApplicationController
  def create
    Comment.create(text: params[:text], tweet_id: params[:tweet_id], user_id: current_user.id)
  end

  def create
      @comment = Comment.create(text: comment_params[:text], tweet_id: comment_params[:tweet_id], user_id: current_user.id)
      redirect_to "/tweets/#{@comment.tweet.id}"   
    end

  private
  def comment_params
    params.permit(:text, :tweet_id)
  end
end
