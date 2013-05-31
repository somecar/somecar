require 'test_helper'

class AdsControllerTest < ActionController::TestCase
  setup do
    @ad = ads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad" do
    assert_difference('Ad.count') do
      post :create, ad: { automark: @ad.automark, automodel: @ad.automodel, bodytype: @ad.bodytype, city: @ad.city, color: @ad.color, customs: @ad.customs, date: @ad.date, drive: @ad.drive, enginecapacity: @ad.enginecapacity, enginetype: @ad.enginetype, exchange: @ad.exchange, mileage: @ad.mileage, owner: @ad.owner, photo: @ad.photo, power: @ad.power, price: @ad.price, region: @ad.region, state: @ad.state, transmission: @ad.transmission, wheel: @ad.wheel }
    end

    assert_redirected_to ad_path(assigns(:ad))
  end

  test "should show ad" do
    get :show, id: @ad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ad
    assert_response :success
  end

  test "should update ad" do
    put :update, id: @ad, ad: { automark: @ad.automark, automodel: @ad.automodel, bodytype: @ad.bodytype, city: @ad.city, color: @ad.color, customs: @ad.customs, date: @ad.date, drive: @ad.drive, enginecapacity: @ad.enginecapacity, enginetype: @ad.enginetype, exchange: @ad.exchange, mileage: @ad.mileage, owner: @ad.owner, photo: @ad.photo, power: @ad.power, price: @ad.price, region: @ad.region, state: @ad.state, transmission: @ad.transmission, wheel: @ad.wheel }
    assert_redirected_to ad_path(assigns(:ad))
  end

  test "should destroy ad" do
    assert_difference('Ad.count', -1) do
      delete :destroy, id: @ad
    end

    assert_redirected_to ads_path
  end
end
