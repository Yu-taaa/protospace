class LikesController < ApplicationController
  before_action :prototype_info

  def create
    @like = @prototype.likes.create(user_id: current_user.id)
  end

  def destroy
    Like.find(params[:id]).destroy
    @prototype.reload
  end

  private
  def prototype_info
    @prototype = Prototype.find(params[:prototype_id])
  end
end
