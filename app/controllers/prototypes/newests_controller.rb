class Prototypes::NewestsController < ApplicationController
  def index
    @prototypes = Prototype.includes([:user, :images]).page(params[:page]).per(5).order("created_at DESC")
    @status = 'newest'
    render 'prototypes/index'
  end
end
