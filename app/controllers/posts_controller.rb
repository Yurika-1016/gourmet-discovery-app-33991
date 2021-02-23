class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :set_post_column, except: [:new, :create, :show, :edit, :update, :destroy]
  before_action :search_product, except: [:new, :create, :show, :edit, :update, :destroy]
  before_action :set_post, only: [:show, :edit,:update, :destroy]
  before_action :not_user_permitted, only:[:edit, :destroy]

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
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post.id)
    else 
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  def search
    @posts = Post.search(params[:keyword])
  end

  def search_ransack
    @results = @p.result
  end


  def search_hokkaido
    @posts = Post.where(prefecture_id: 2)
  end

  def search_aomori
    @posts = Post.where(prefecture_id: 3)
  end

  def search_iwate
    @posts = Post.where(prefecture_id: 4)
  end

  def search_miyagi
    @posts = Post.where(prefecture_id: 5)
  end

  def search_akita
    @posts = Post.where(prefecture_id: 6)
  end

  def search_yamagata
    @posts = Post.where(prefecture_id: 7)
  end

  def search_fukushima
    @posts = Post.where(prefecture_id: 8)
  end

  def search_ibaraki
    @posts = Post.where(prefecture_id: 9)
  end

  def search_tochigi
    @posts = Post.where(prefecture_id: 10)
  end

  def search_gunma
    @posts = Post.where(prefecture_id: 11)
  end

  def search_saitama
    @posts = Post.where(prefecture_id: 12)
  end

  def search_chiba
    @posts = Post.where(prefecture_id: 13)
  end

  def search_tokyo
    @posts = Post.where(prefecture_id: 14)
  end

  def search_kanagawa
    @posts = Post.where(prefecture_id: 15)
  end

  def search_nigata
    @posts = Post.where(prefecture_id: 16)
  end

  def search_toyama
    @posts = Post.where(prefecture_id: 17)
  end

  def search_ishikawa
    @posts = Post.where(prefecture_id: 18)
  end

  def search_fukui
    @posts = Post.where(prefecture_id: 19)
  end

  def search_yamanashi
    @posts = Post.where(prefecture_id: 20)
  end

  def search_nagano
    @posts = Post.where(prefecture_id: 21)
  end

  def search_gifu
    @posts = Post.where(prefecture_id: 22)
  end

  def search_shizuoka
    @posts = Post.where(prefecture_id: 23)
  end

  def search_aichi
    @posts = Post.where(prefecture_id: 24)
  end

  def search_mie
    @posts = Post.where(prefecture_id: 25)
  end

  def search_shiga
    @posts = Post.where(prefecture_id: 26)
  end

  def search_kyoto
    @posts = Post.where(prefecture_id: 27)
  end

  def search_osaka
    @posts = Post.where(prefecture_id: 28)
  end

  def search_hyogo
    @posts = Post.where(prefecture_id: 29)
  end

  def search_nara
    @posts = Post.where(prefecture_id: 30)
  end

  def search_wakayama
    @posts = Post.where(prefecture_id: 31)
  end

  def search_tottori
    @posts = Post.where(prefecture_id: 32)
  end

  def search_shimane
    @posts = Post.where(prefecture_id: 33)
  end

  def search_okayama
    @posts = Post.where(prefecture_id: 34)
  end

  def search_hiroshima
    @posts = Post.where(prefecture_id: 35)
  end

  def search_yamaguchi
    @posts = Post.where(prefecture_id: 36)
  end

  def search_tokushima
    @posts = Post.where(prefecture_id: 37)
  end

  def search_kagawa
    @posts = Post.where(prefecture_id: 38)
  end

  def search_ehime
    @posts = Post.where(prefecture_id: 39)
  end

  def search_kochi
    @posts = Post.where(prefecture_id: 40)
  end

  def search_fukuoka
    @posts = Post.where(prefecture_id: 41)
  end

  def search_saga
    @posts = Post.where(prefecture_id: 42)
  end

  def search_nagasaki
    @posts = Post.where(prefecture_id: 43)
  end

  def search_kumamoto
    @posts = Post.where(prefecture_id: 44)
  end

  def search_oita
    @posts = Post.where(prefecture_id: 45)
  end

  def search_miyazaki
    @posts = Post.where(prefecture_id: 46)
  end

  def search_kagoshima
    @posts = Post.where(prefecture_id: 47)
  end

  def search_okinawa
    @posts = Post.where(prefecture_id: 48)
  end

  private

  def post_params
    params.require(:post).permit(:genre_id, :prefecture_id, :address, :age_id, :text, :image).merge(user_id: current_user.id)
  end

  def set_post_column
    @post_age = Age.where.not(id: 1)
    @post_genre = Genre.where.not(id: 1)
    @post_prefecture = Prefecture.where.not(id: 1)
  end

  def search_product
    @p = Post.ransack(params[:q])
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def not_user_permitted
    unless current_user.id == @post.user_id
      redirect_to post_path(@post.id)
    end
  end

end
