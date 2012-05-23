class Category < ActiveRecord::Base
  has_many :offers , :dependent=>:destroy
end
