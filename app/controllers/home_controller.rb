class HomeController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
    @posts = @posts.paginate(page: params[:page], per_page: 3)
  end
end
