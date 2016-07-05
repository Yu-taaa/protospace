class RemoveTimestampsFromPrototypesTimestamps < ActiveRecord::Migration
  def change
     create_table :prototypes do |t|
       remove_columm :prototypes, :timestamps
     end
  end
end
