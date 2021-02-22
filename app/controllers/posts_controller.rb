class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def search_hokkaido
    @posts = Post.where(prefecture_id: 2)
  end

  private

  def post_params
    params.require(:post).permit(:genre_id, :prefecture_id, :address, :age_id, :text, :image).merge(user_id: current_user.id)
  end
end
