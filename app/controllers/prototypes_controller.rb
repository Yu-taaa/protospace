class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.includes(:user).page(params[:page]).per(1).order("created_at DESC")
  end

  def new
    @prototype = Prototype.new
    @prototype.images.build
  end

  def create
    @prototype = current_user.prototypes.new(prototype_params)
    if @prototype.save
      redirect_to root_path, success: "Successfully created your prototype."
    else
      render new_prototype_path
    end

  end

  def show
    @prototype = Prototype.find(params[:id])
    @user = User.find(params[:id])
  end

  private
  def prototype_params
    params.require(:prototype).permit(
      :title,
      :concept,
      :catch_copy,
      images_attributes: [:image_url, :status, :id, :prototype_id]
    )
  end
end
# images_attributes: [:file]exir