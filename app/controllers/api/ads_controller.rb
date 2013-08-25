class Api::AdsController < ApplicationController
  def index
    chain = Ad.order(:created_at)
    # TODO: make search by marks and models
    marks = params[:marks]
    models = params[:models]

    start_price = params[:start_price]
    end_price = params[:end_price]
    body_types = params[:body_types]
    mileage = params[:mileage]
    engyntypes = params[:engyntypes]
    capacity_start = params[:capacity_start]
    capacity_end = params[:capacity_end]
    drives = params[:drives]
    start_power = params[:start_power]
    end_power = params[:end_power]
    transmissions = params[:transmission]

    #TODO: fix date row in the table!!
    start_date = params[:start_date]
    end_date = params[:end_date]
    #TODO: make search by region and city
    region = params[:region]
    city = params[:city]

    chain = chain.where('price > ?', start_price) if start_price.present?
    chain = chain.where('price < ?', end_price) if end_price.present?
    chain = chain.where(bodytype: body_types) if body_types.present?
    chain = chain.where('mileage <= ?', mileage) if mileage.present?
    chain = chain.where(engyntype: engyntypes) if engyntypes.present?
    chain = chain.where('enginecapacity > ?', capacity_start) if capacity_start.present?
    chain = chain.where('enginecapacity < ?', capacity_end) if capacity_end.present?
    chain = chain.where(drive: drives) if drives.present?
    chain = chain.where('power > ?', start_power) if start_power.present?
    chain = chain.where('power < ?', end_power) if end_power.present?
    chain = chain.where(transmission: transmissions) if transmissions.present?
    chain = chain.where('date > ?', start_date) if start_date.present?
    chain = chain.where('date < ?', end_date) if end_date.present?
    @ads = chain
  end

  def search
    @ad_count = 7
  end
end
