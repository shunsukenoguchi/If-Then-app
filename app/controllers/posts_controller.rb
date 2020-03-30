class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all.includes(:user).order('created_at ASC')
  end
  def show
    @post = post.find_by(id: params[:id])
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
  def edit
    @post = Post.find_by(id: params[:id])
  end
  def update
    @post = Post.find_by(params[:id])
    @post.update(params.require(:post).permit(:if, :then))
    redirect_to  root_path
  end
  def destroy
    @post = Post.find_by(id: params[:id])
    if @post.destroy
      flash[:notice] = "削除されました"
    else
      flash[:alert] = "削除に失敗しました"
    end
    redirect_to root_path
  end
  private
  def post_params
    params.require(:post).permit(:if, :then).merge(user_id: current_user.id)
  end
end
