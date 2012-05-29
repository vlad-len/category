class Category < ActiveRecord::Base
  has_many :posts , :dependent=>:destroy
  validates :title, :presence=>true
  validates_associated :posts
end
