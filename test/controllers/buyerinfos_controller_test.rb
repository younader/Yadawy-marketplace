require 'test_helper'

class BuyerinfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buyerinfo = buyerinfos(:one)
  end

  test "should get index" do
    get buyerinfos_url
    assert_response :success
  end

  test "should get new" do
    get new_buyerinfo_url
    assert_response :success
  end

  test "should create buyerinfo" do
    assert_difference('Buyerinfo.count') do
      post buyerinfos_url, params: { buyerinfo: {  } }
    end

    assert_redirected_to buyerinfo_url(Buyerinfo.last)
  end

  test "should show buyerinfo" do
    get buyerinfo_url(@buyerinfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_buyerinfo_url(@buyerinfo)
    assert_response :success
  end

  test "should update buyerinfo" do
    patch buyerinfo_url(@buyerinfo), params: { buyerinfo: {  } }
    assert_redirected_to buyerinfo_url(@buyerinfo)
  end

  test "should destroy buyerinfo" do
    assert_difference('Buyerinfo.count', -1) do
      delete buyerinfo_url(@buyerinfo)
    end

    assert_redirected_to buyerinfos_url
  end
end
