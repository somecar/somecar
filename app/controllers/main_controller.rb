class MainController < ApplicationController
  def index
    @ads = Ad.limit(4).includes('images').offset(rand(Ad.all.count))
    @ad = Ad.new
    @user = User.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mains }
    end
  end
end
