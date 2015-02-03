class Featvalue < ActiveRecord::Base
  belongs_to  :product
  belongs_to  :featunit
  has_many  :pervalues
end
