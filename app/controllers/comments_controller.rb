class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @forum = Forum.find(params[:forum_id])
    @post = @forum.posts.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:comment))
    @comment.user_id = current_user.id
    @comment.save

    if @comment.save
      redirect_to forum_post_path(@forum, @post)
    else
      render 'new'
    end
  end

  def destroy
    @forum = Forum.find(params[:forum_id])
    @post = @forum.posts.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to forum_post_path(@forum, @post)
  end

  def edit
    @forum = Forum.find(params[:forum_id])
    @post = @forum.posts.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def update
    @forum = Forum.find(params[:forum_id])
    @post = @forum.posts.find(params[:post_id])
    @comment = @post.comments.find(params[:id])

    if @comment.update(params[:comment].permit(:comment))
      redirect_to post_path(@post)
    else
      render 'edit'
    end
  end


end
