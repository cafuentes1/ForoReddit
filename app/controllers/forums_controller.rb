class ForumsController < ApplicationController
  before_action :find_forum, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @forums = Forum.all
    if params[:search]
      @forums = Forum.search(params[:search]).order("created_at DESC")
    else
      @forums = Forum.all.order("created_at DESC")

    end
  end

  def show
  end

  def new
    @forum = current_user.forums.build
  end

  def create
    @forum = current_user.forums.build(forum_params)

    if @forum.save
      redirect_to @forum
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @forum.update(forum_params)
      redirect_to @forum
    else
      render 'edit'
    end
  end

  def destroy
    @forum.posts.each do |post|
      post.comments.each do |comment|
        comment.destroy
      end
      post.destroy
    end
    @forum.destroy
    redirect_to forums_path
  end

  private

  def find_forum
    @forum = Forum.find(params[:id])
  end

  def forum_params
    params.require(:forum).permit(:title, :topic, :description)
  end
end
