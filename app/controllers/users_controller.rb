class UsersController < ApplicationController

  def index
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update_params
    current_user.update(update_params)
    redirect_to action: show
  end

  def edit
  end

  private
  def update_params
    params.require(:user).permit(:email, :nickname, :member_name, :profile, :works)
  end


end
