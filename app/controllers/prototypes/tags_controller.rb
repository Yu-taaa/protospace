class Prototypes::TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.all
    # マイグレーションによってtagsとtaggingsの2つのテーブルが追加され、これらのモデルはgemに含まれているので改めて作成する必要はない
  end

  def show
    @tag = ActsAsTaggableOn::Tag.find(params[:id])
    @prototypes = Prototype.tagged_with(@tag).includes(:user, :images).page(params[:page]).per(20)
    # タグで検索する機能を作るtagged_with(@tag)
  end
end
