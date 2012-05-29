class Picture < ActiveRecord::Base
  mount_uploader :image, PictureUploader
  validates :image,:post_id, :presence=>true
  belongs_to :post
  validates_associated :post
end
