class Ad < ActiveRecord::Base
  attr_accessible :automark, :automodel, :bodytype, :city, :color, :customs, :date, 
  :drive, :enginecapacity, :enginetype, :exchange, :mileage, :owner, :power, 
  :price, :region, :state, :transmission, :wheel
end