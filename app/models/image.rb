class Image < ActiveRecord::Base
  belongs_to :prototype
  validates :image_url, :status, presence: true
  mount_uploader :image_url, ImageUploader
  enum status: { main: 0, sub:1 }
end