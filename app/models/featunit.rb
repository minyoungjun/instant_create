class Featunit < ActiveRecord::Base
  belongs_to  :feature
  has_many  :featvalues
  has_many  :featpers
end
