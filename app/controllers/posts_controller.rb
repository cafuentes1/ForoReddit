class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def show
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @forum = Forum.find(params[:forum_id])
    @post = @forum.posts.create(post_params)
    @post.user_id = current_user.id

    if @post.save
      redirect_to @forum
    else
      render 'new'
    end
  end

  def edit
    @forum = Forum.find(params[:forum_id])
    @post = @forum.posts.find(params[:id])
    authorize! :update, @post
  end

  def update
    @forum = Forum.find(params[:forum_id])
    @post = @forum.posts.find(params[:id])

    if @post.update(post_params)
      redirect_to @forum
    else
      render 'edit'
    end
  end

  def destroy
    @forum = Forum.find(params[:forum_id])
    @post = @forum.posts.find(params[:id])
    @post.comments.each do |comment|
      comment.destroy
    end
    @post.destroy
    redirect_to @forum
  end


  private

  def find_post
    @forum = Forum.find(params[:forum_id])
    @post = @forum.posts.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
