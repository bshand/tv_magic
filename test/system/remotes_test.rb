require "application_system_test_case"

class RemotesTest < ApplicationSystemTestCase
  setup do
    @remote = remotes(:one)
  end

  test "visiting the index" do
    visit remotes_url
    assert_selector "h1", text: "Remotes"
  end

  test "creating a Remote" do
    visit remotes_url
    click_on "New Remote"

    fill_in "Description", with: @remote.description
    fill_in "Name", with: @remote.name
    click_on "Create Remote"

    assert_text "Remote was successfully created"
    click_on "Back"
  end

  test "updating a Remote" do
    visit remotes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @remote.description
    fill_in "Name", with: @remote.name
    click_on "Update Remote"

    assert_text "Remote was successfully updated"
    click_on "Back"
  end

  test "destroying a Remote" do
    visit remotes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Remote was successfully destroyed"
  end
end
