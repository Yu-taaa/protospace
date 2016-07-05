class RemoveAvatarFromPrototypes < ActiveRecord::Migration
  def change
    remove_column :prototypes, :avatar, :string
  end
end
