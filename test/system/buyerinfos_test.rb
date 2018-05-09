require "application_system_test_case"

class BuyerinfosTest < ApplicationSystemTestCase
  setup do
    @buyerinfo = buyerinfos(:one)
  end

  test "visiting the index" do
    visit buyerinfos_url
    assert_selector "h1", text: "Buyerinfos"
  end

  test "creating a Buyerinfo" do
    visit buyerinfos_url
    click_on "New Buyerinfo"

    click_on "Create Buyerinfo"

    assert_text "Buyerinfo was successfully created"
    click_on "Back"
  end

  test "updating a Buyerinfo" do
    visit buyerinfos_url
    click_on "Edit", match: :first

    click_on "Update Buyerinfo"

    assert_text "Buyerinfo was successfully updated"
    click_on "Back"
  end

  test "destroying a Buyerinfo" do
    visit buyerinfos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Buyerinfo was successfully destroyed"
  end
end
