# coding: utf-8
class AdsController < ApplicationController
  # GET /ads
  # GET /ads.json
  def index
    @ads = Ad.all

    respond_to do |format|
      format.html # index.html.haml
      format.json { render json: @ads }
    end
  end

  # GET /ads/1
  # GET /ads/1.json
  def show
    @ad = Ad.find(params[:id])

    respond_to do |format|
      format.html # show.html.haml
      format.json { render json: @ad }
    end
  end

  # GET /ads/new
  # GET /ads/new.json
    def new
    @ad = Ad.new
    @ad.images.build

    respond_to do |format|
      format.html # new.html.haml
      format.json { render json: @ad }
    end
  end

  # GET /ads/1/edit
  def edit
    @ad = Ad.find(params[:id])
  end

  # POST /ads
  # POST /ads.json
  def create
    @ad = Ad.create(params[:ad])
    params[:image][:image].each do |image|
     @ad.images.create(image: image)
    end
    @ad.user = current_user if current_user
    respond_to do |format|
      if @ad.save
        format.html { redirect_to @ad, notice: 'Ваше объявление добавлено.' }
        format.json { render json: @ad, status: :created, location: @ad }
      else
        format.html { render action: 'new' }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ads/1
  # PUT /ads/1.json
  def update
    @ad = Ad.find(params[:id])
    @ad.images.destroy_all if params[:image][:image]
    params[:image][:image].each do |image|
      @ad.images.create(image: image)
    end
    respond_to do |format|
      if @ad.update_attributes(params[:ad])
        format.html { redirect_to @ad, notice: 'Ad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ads/1
  # DELETE /ads/1.json
  def destroy
    @ad = Ad.find(params[:id])
    @ad.destroy

    respond_to do |format|
      format.html { redirect_to ads_url }
      format.json { head :no_content }
    end
  end

  def search
    @ad_count = 7
  end

  def get_drop_down_options
    val = params[:ad_automark_id]
    #Use val to find records
    options = Automodel.collect{|x| "'#{x.id}' : '#{x.name}'"}
    render :text => "{#{options.join(",")}}"
  end

  def mine
    @my_ads = current_user.ads
    respond_to do |format|
      format.html
      format.json { render json: @ads }
    end
  end

end
