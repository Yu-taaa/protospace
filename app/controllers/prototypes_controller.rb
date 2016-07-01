class PrototypesController < ApplicationController
  def index
  end

  def new
    @prototype = Prototype.new
    @prototype.images.build
  end

  def create
    @prototype = Prototype.create(prototype_params)
    redirect_to action: 'index'
  end

  private
  def prototype_params
    params.require(:prototype).permit(
      :title,
      :concept,
      :catch_copy,
      images_attributes: [:image_url, :status, :id]
    )
  end
end
# images_attributes: [:file]exir