class ForumsController < ApplicationController
  before_action :set_forum, only: [:show, :edit, :update, :destroy, :subscribe]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /forums
  # GET /forums.json
  def index
    #@forums = Forum.all
    @forums = Forum.search(params[:search])
    #@posts = Post.all.order('created_at desc')
    @posts = Post.search(params[:search_p]).order('created_at desc')
  end

  # GET /forums/1
  # GET /forums/1.json
  def show
    @posts = Post.where('forum_id = ?', @forum.id)
    @forums = Forum.all
  end

  # GET /forums/new
  def new
    @forum = current_user.forums.build
  end

  # GET /forums/1/edit
  def edit
    authorize! :update, @forum
  end

  # POST /forums
  # POST /forums.json
  def create
    @forum = current_user.forums.build(forum_params)

    respond_to do |format|
      if @forum.save
        format.html { redirect_to forums_path, notice: 'Forum was successfully created.' }
        format.json { render :show, status: :created, location: @forum }
      else
        format.html { render :new }
        format.json { render json: @forum.errors, status: :unprocessable_entity }
      end
    end
  end

  def subscribe
    type = params[:type]
    if type == "subscribe"
      current_user.subscriptions << @forum
      redirect_back(fallback_location: root_path)
    elsif type == "unsubscribe"
      current_user.subscriptions.delete(@forum)
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  # PATCH/PUT /forums/1
  # PATCH/PUT /forums/1.json
  def update
    respond_to do |format|
      if @forum.update(forum_params)
        format.html { redirect_to forums_path, notice: 'Forum was successfully updated.' }
        format.json { render :show, status: :ok, location: @forum }
      else
        format.html { render :edit }
        format.json { render json: @forum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forums/1
  # DELETE /forums/1.json
  def destroy
    @forum.destroy
    respond_to do |format|
      format.html { redirect_to forums_url, notice: 'Forum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forum
      @forum = Forum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forum_params
      params.require(:forum).permit(:title, :topic, :description)
    end
end
