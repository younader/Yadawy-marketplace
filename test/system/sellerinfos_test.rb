require "application_system_test_case"

class SellerinfosTest < ApplicationSystemTestCase
  setup do
    @sellerinfo = sellerinfos(:one)
  end

  test "visiting the index" do
    visit sellerinfos_url
    assert_selector "h1", text: "Sellerinfos"
  end

  test "creating a Sellerinfo" do
    visit sellerinfos_url
    click_on "New Sellerinfo"

    click_on "Create Sellerinfo"

    assert_text "Sellerinfo was successfully created"
    click_on "Back"
  end

  test "updating a Sellerinfo" do
    visit sellerinfos_url
    click_on "Edit", match: :first

    click_on "Update Sellerinfo"

    assert_text "Sellerinfo was successfully updated"
    click_on "Back"
  end

  test "destroying a Sellerinfo" do
    visit sellerinfos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sellerinfo was successfully destroyed"
  end
end
