class AccountsController < ApplicationController
  before_action :authenticate_user!

  def user_details
    @user = current_user
    @post = Post.where(user_id: @user.id)
    @post_count = @post.count
    @comentarios_count =  Comentario.where(user_id: @user.id).count
  end
end
