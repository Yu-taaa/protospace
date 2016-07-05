class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :image_url
      t.integer :status
      t.references :prototype, index: true

      t.timestamps
    end
  end
end
