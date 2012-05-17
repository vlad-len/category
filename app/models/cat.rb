class Cat < ActiveRecord::Base
  has_many :offers , :dependent=>:destroy
end
