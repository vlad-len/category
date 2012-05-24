class Offer < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  belongs_to :category
  has_many :pictures,:dependent=>:destroy
end
