class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: %i[ index show ]

  # GET /posts or /posts.json
  def index
    @posts = Post.all
  end

  def upload_post
    @post = Post.new
    flash[:notice] = I18n.t('views.multiplos_posts')
  end

  def create_upload_post
    if params[:post][:posts].present?
      @posts = []
      params[:post][:posts].shift
      params[:post][:posts].each do |post|
        post_data = ::Upload::ProcessTxt.new(post).execute
        post_data[:user_id] = params[:post][:user_id]
        @posts << post_data
      end
      sleep 2
      flash[:success] = I18n.t("posts.enviado")
      redirect_to root_path
      @posts.each do |post|
        ProcessPostsWorker.perform_in(10, post.as_json)
      end
    else
      flash[:error] = I18n.t("posts.erro")
      redirect_to upload_post_path
    end
  end

  # GET /posts/1 or /posts/1.json
  def show
    @tags = TagPost.where(post_id: @post.id)
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to post_url(@post), notice: I18n.t("posts.criado") }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: I18n.t("posts.atualizado") }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_details_path, notice: I18n.t("posts.deletado") }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:user_id, :titulo, :body, :tag_ids => [], :posts => [])
    end
end
