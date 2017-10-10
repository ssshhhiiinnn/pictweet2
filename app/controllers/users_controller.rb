class UsersController < ApplicationController
  def show
    # @user_id = current_user.id
    @nickname = current_user.nickname
    @tweets = Tweet.where(user_id: current_user.id).page(params[:page]).per(5).order("created_at DESC")
  end
end
