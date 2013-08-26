# -*- encoding : utf-8 -*-
class Ad < ActiveRecord::Base
  attr_accessible :automark, :automodel, :bodytype, :city, :color, :customs, :date, 
  :drive, :enginecapacity, :enginetype, :exchange, :mileage, :owner, :power, 
  :price, :region, :state, :transmission, :wheel
  #TODO: fix date row in the table!! Why it save full current date with selected year o_O
  #TODO: to think about indexes for this model to make search quicker

  BODYTYPES = {'седан' => 1, 'хэтчбек' => 2, 'купе' => 3, 'универсал' => 4, 'вседорожник' => 5,
               'пикап' => 6, 'кабриолет' => 7, 'минивен' => 8, 'фургон' => 9, 'кроссовер' => 0}.freeze
  ENGINETYPES = {'бензин' => 1, 'дизель' => 2, 'гибрид' => 3}.freeze
  DRIVETYPE = {'передний' => 1, 'задний' => 2, 'полный' => 3}.freeze
  TRANSMISSION = {'автомат' => 1, 'механика' => 2}.freeze
  WHEELTYPE = {'левый' => 1, 'правый' => 2}.freeze
  CUSTOMS = {'не растаможен' => 0, 'растаможен' => 1}.freeze

end
