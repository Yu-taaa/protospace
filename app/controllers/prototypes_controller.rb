class PrototypesController < ApplicationController
   before_action :prototype_info, except: [:index, :new, :create]

  def index
    @prototypes = Prototype.includes(:user).page(params[:page]).per(5).order("created_at DESC")
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
  end

  def edit
   @prototype_images = @prototype.images.build
  end

  def update
    @prototype.update(update_params)
    redirect_to root_path
  end

  def destroy
    if @prototype.user_id == current_user.id
      @prototype.destroy
      redirect_to root_path
    end
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

  def update_params
    params.require(:prototype).permit(
      :title,
      :concept,
      :catch_copy,
      images_attributes: [:image_url, :status, :id, :prototype_id]
    )
  end

  def prototype_info
    @prototype = Prototype.find(params[:id])
  end
end
