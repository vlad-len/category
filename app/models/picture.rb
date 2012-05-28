class Picture < ActiveRecord::Base
  mount_uploader :image, PictureUploader
  validates :image, presence: true
  belongs_to :post
end
