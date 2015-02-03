class Featper < ActiveRecord::Base
  belongs_to :featunit
  has_many  :pervalues
end
