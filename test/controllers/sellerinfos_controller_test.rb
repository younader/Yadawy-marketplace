require 'test_helper'

class SellerinfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sellerinfo = sellerinfos(:one)
  end

  test "should get index" do
    get sellerinfos_url
    assert_response :success
  end

  test "should get new" do
    get new_sellerinfo_url
    assert_response :success
  end

  test "should create sellerinfo" do
    assert_difference('Sellerinfo.count') do
      post sellerinfos_url, params: { sellerinfo: {  } }
    end

    assert_redirected_to sellerinfo_url(Sellerinfo.last)
  end

  test "should show sellerinfo" do
    get sellerinfo_url(@sellerinfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_sellerinfo_url(@sellerinfo)
    assert_response :success
  end

  test "should update sellerinfo" do
    patch sellerinfo_url(@sellerinfo), params: { sellerinfo: {  } }
    assert_redirected_to sellerinfo_url(@sellerinfo)
  end

  test "should destroy sellerinfo" do
    assert_difference('Sellerinfo.count', -1) do
      delete sellerinfo_url(@sellerinfo)
    end

    assert_redirected_to sellerinfos_url
  end
end
