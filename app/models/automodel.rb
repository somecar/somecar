class Automodel < ActiveRecord::Base
  attr_accessible :name, :automark_id
  belongs_to :automark
  has_many :ads
end
