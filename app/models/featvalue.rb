class Featvalue < ActiveRecord::Base
  belongs_to  :product
  belongs_to  :featunit
end
