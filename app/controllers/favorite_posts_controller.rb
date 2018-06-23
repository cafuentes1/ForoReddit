class FavoritePostsController < ApplicationController
  before_action :set_forum_post
  
  def create
    if Favorite.create(favorited: @post, user: current_user)
      redirect_to forum_post_path(@forum, @post), notice: 'post has been favorited'
    else
      redirect_to forum_post_path(@forum, @post), alert: 'Something went wrong...*sad panda*'
    end
  end
  
  def destroy
    Favorite.where(favorited_id: @post.id, user_id: current_user.id).first.destroy
    redirect_to forum_post_path(@forum.id, @post), notice: 'post is no longer in favorites'
  end
  
  private
  
  def set_forum_post
    @post = Post.find(params[:pid])
    @forum = Forum.find(params[:fid])
  end
end