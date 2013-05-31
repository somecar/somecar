class Ad < ActiveRecord::Base
  attr_accessible :automark, :automodel, :bodytype, :city, :color, :customs, :date, :drive, :enginecapacity, :enginetype, :exchange, :mileage, :owner, :photo, :power, :price, :region, :state, :transmission, :wheel
  has_attached_file :photo, :styles => { :medium => "1000x1000" } 
end
