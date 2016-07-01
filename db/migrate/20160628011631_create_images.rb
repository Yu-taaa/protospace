class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :image_url
      t.integer :status
      t.integer :prototype_id


      t.timestamps null: false
    end
  end
end
