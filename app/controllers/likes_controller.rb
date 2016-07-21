class LikesController < ApplicationController
  before_action :prototype_info

  def create
    @like = Like.create(user_id: current_user.id, prototype_id: params[:prototype_id])
    @prototype.reload
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
