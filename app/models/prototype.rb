class Prototype < ActiveRecord::Base
  has_many :images
  belongs_to :user
  accepts_nested_attributes_for :images, allow_destroy: true
  #validation
  validates :title, :concept, :catch_copy, presence: true

  def main_image_url
    images.main[0].image_url
  end

  def sub_image_url(num)
    images.sub[num].image_url if images.sub[num].image_url
  end
end
