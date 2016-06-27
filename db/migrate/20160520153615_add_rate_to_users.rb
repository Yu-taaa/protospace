class AddRateToUsers < ActiveRecord::Migration
  def change
  add_column :users, :nickname, :string
  add_column :users, :member_name, :string
  add_column :users, :profile, :text
  add_column :users, :works, :text
  end
end
