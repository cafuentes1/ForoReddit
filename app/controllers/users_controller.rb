class UsersController < ApplicationController

  def index
    authorize! :list, current_user
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    #authorize! :read, @user
    @posts = Post.where('user_id = ?', params[:id])
  end
end
