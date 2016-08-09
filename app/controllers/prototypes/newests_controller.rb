class Prototypes::NewestsController < ApplicationController
  def index
    @prototypes = Prototype.includes(:user).page(params[:page]).per(5).order("created_at DESC")
    @status = 'newest'
    render 'prototypes/index'
  end
end
