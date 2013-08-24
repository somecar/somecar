class Api::AdsController < ApplicationController
  def index
    @ads = Ad.all
  end

  def search
    @ad_count = 7
  end
end
