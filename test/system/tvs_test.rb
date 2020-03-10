require "application_system_test_case"

class TvsTest < ApplicationSystemTestCase
  setup do
    @tv = tvs(:one)
  end

  test "visiting the index" do
    visit tvs_url
    assert_selector "h1", text: "Tvs"
  end

  test "creating a Tv" do
    visit tvs_url
    click_on "New Tv"

    fill_in "Make", with: @tv.make
    fill_in "Model", with: @tv.model
    click_on "Create Tv"

    assert_text "Tv was successfully created"
    click_on "Back"
  end

  test "updating a Tv" do
    visit tvs_url
    click_on "Edit", match: :first

    fill_in "Make", with: @tv.make
    fill_in "Model", with: @tv.model
    click_on "Update Tv"

    assert_text "Tv was successfully updated"
    click_on "Back"
  end

  test "destroying a Tv" do
    visit tvs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tv was successfully destroyed"
  end
end
