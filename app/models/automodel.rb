class Automodel < ActiveRecord::Base
  attr_accessible :name, :automark, :automark_id
  belongs_to :automark
end
