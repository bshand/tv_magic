require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get search_url
    assert_response :success
  end

  test "should get download" do
    get search_download_url
    assert_response :success
  end

  test "should get test" do
    get search_test_url
    assert_response :success
  end

end
