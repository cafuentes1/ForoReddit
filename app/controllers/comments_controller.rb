class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: [:edit, :update, :show, :destroy, :vote]
  before_action :set_post, only: [:create, :edit, :show, :update, :destroy, :vote]

  def create
    @comment = @post.comments.create(params[:comment].permit(:comment, :post_id))
    @comment.user_id = current_user.id

    respond_to do |format|
      if @comment.save
        format.html { redirect_to post_path(@post) }
        format.js # render create.js.erb
      else
        format.html { redirect_to post_path(@post), notice: 'Comentario no creado. Por favor intente nuevamente'}
        format.js # render create.js.erb
      end
    end
  end

  def vote
    value = params[:type] == "up" ? 1 : -1
    @comment.add_or_update_evaluation(:votes, value, current_user)
    #redirect_back(fallback_location: root_path)
    respond_to do |format|
      format.html { redirect_to post_path(@post) }
      format.js # render create.js.erb
    end
  end

  def new
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def update
    @comment = @post.comments.find(params[:id])
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to post_path(@post), notice: 'Comentario actualizado exitosamente'}
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity}
      end
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:comment)
  end

end
