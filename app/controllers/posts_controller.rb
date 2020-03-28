class PostsController < ApplicationController
  def index

  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    if @post.present?
      @post.save
      redirect_to root_path
      flash[:notice] = "追加されました"
    else
      redirect_to root_path
      flash[:alert] = "追加に失敗しました"
    end
  end
  private
  def post_params
    params.require(:post).permit(:if, :then).merge(user_id: current_user.id)
  end
end
