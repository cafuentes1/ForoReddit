class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :find_forums, only: [:index, :show, :new, :edit]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /posts
  # GET /posts.json
  def index
    #@posts = Post.all.order('created_at desc')
    @posts = Post.search(params[:search_p]).order('created_at desc')
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @posts = Post.all.order('created_at desc')
  end

  # GET /posts/new
  def new
    @post = current_user.posts.build
  end

  # GET /posts/1/edit
  def edit
    authorize! :update, @post
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = current_user.posts.build(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post creado exitosamente.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    def find_forums
      @forums = Forum.all.order('created_at desc')
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content, :forum_id)
    end
end
