class Prototype < ActiveRecord::Base
  has_many :images, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :images, allow_destroy: true, reject_if: proc { |attributes| attributes['image_url'].blank? }
  #validation
  validates :title, :concept, :catch_copy, presence: true

  def main_image
    images.main[0]
  end

  def main_image_url
    images.main[0].image_url
  end

  def sub_image(num)
    images.sub[num]
  end

  def sub_image_url(num)
    images.sub[num].image_url if images.sub[num].image_url
  end

  def sub_image_id(num)
    images.sub[num].id if sub_image(num)
  end

end
