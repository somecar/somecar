# -*- encoding : utf-8 -*-
class Ad < ActiveRecord::Base
  attr_accessible :bodytype, :city, :color, :customs, :date,
  :drive, :enginecapacity, :enginetype, :exchange, :mileage, :owner, :power, 
  :price, :region, :state, :transmission, :wheel, :automark_id, :automodel_id,
  :images_attributes, :description, :user_id

  #TODO: fix date row in the table!! Why it save full current date with selected year o_O
  #TODO: to think about indexes for this model to make search quicker
  belongs_to :automodel
  belongs_to :automark
  belongs_to :user
  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images

  BODYTYPES = {'седан' => 1, 'хэтчбек' => 2, 'купе' => 3, 'универсал' => 4, 'вседорожник' => 5,
               'пикап' => 6, 'кабриолет' => 7, 'минивен' => 8, 'фургон' => 9, 'кроссовер' => 0}.freeze
  ENGINETYPES = {'бензин' => 1, 'дизель' => 2, 'гибрид' => 3}.freeze
  DRIVETYPE = {'передний' => 1, 'задний' => 2, 'полный' => 3}.freeze
  TRANSMISSION = {'автомат' => 1, 'механика' => 2}.freeze
  WHEELTYPE = {'левый' => 1, 'правый' => 2}.freeze
  CUSTOMS = {'не растаможен' => 0, 'растаможен' => 1}.freeze
  EXCHANGE = {'возможен' => 0, 'не возможен' => 1}
end
