class Prototype < ActiveRecord::Base
  has_many :images
  belongs_to :user
  accepts_nested_attributes_for :images, allow_destroy: true
  #validation
  validates :title, :concept, :catch_copy, presence: true

end
