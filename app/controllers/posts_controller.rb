class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: %i[ index show ]
  protect_from_forgery with: :null_session

  # GET /posts or /posts.json
  def index
    @posts = Post.all
  end

  def upload_post
    @post = Post.new
  end

  def create_upload_post
    txt_file_path = params[:post][:body].path
    txt_file = File.open(txt_file_path, 'r')
    body = ""
    txt_file.each_line do |line|
      body += line
    end
    txt_file.close
    body
    # Iniciar o job em segundo plano
    ProcessTxtJob.perform_later(10.seconds, params[:post][:titulo], body, params[:post][:tag_ids], params[:post][:user_id])
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
        format.html { redirect_to post_url(@post), notice: "Post was successfully created." }
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
        format.html { redirect_to post_url(@post), notice: "Post was successfully updated." }
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
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
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
      params.require(:post).permit(:user_id, :titulo, :body, :tag_ids => [])
    end
end
