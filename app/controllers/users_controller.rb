class UsersController < ApplicationController
  before_action :user_info, except: :update

  def show
    @prototypes = @user.prototypes
  end

  def edit
  end

  def update
    current_user.update(update_params)
    redirect_to action: :show
  end

  private
  def update_params
    params.require(:user).permit(:email, :nickname, :member_name, :profile, :works, :avatar)
  end

  def user_info
    @user = User.find(params[:id])
  end
end
