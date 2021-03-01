class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :not_user_permitted

  def show
    @posts = Post.where(user_id: current_user.id)
    @user = User.find_by(id: current_user.id)
  end

  private

  def not_user_permitted
    redirect_to root_path unless user_signed_in? != current_user
  end
end
