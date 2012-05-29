class Post < ActiveRecord::Base
  belongs_to :category
  has_many :pictures, :dependent=>:destroy
  validates :title, :description, :short_description, :phone1,:email,
  :city,:address,:category_id, :presence => true
  validates :phone1,:phone2, :numericality=>true
  validates :email, :uniqueness=>true
end
