class Feature < ActiveRecord::Base
  belongs_to  :showtype
  has_many  :featunits
end
