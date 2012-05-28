class Post < ActiveRecord::Base
  belongs_to :category
  has_many :pictures, :dependent=>:destroy
end
