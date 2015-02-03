class Showtype < ActiveRecord::Base
  has_many  :marketingtypes
  has_many  :features
end
