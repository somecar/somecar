class Automark < ActiveRecord::Base
  attr_accessible :name
  has_many :automodels
  has_many :ads
end
