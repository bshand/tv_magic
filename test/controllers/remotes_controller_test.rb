require 'test_helper'

class RemotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @remote = remotes(:one)
  end

  test "should get index" do
    get remotes_url
    assert_response :success
  end

  test "should get new" do
    get new_remote_url
    assert_response :success
  end

  test "should create remote" do
    assert_difference('Remote.count') do
      post remotes_url, params: { remote: { description: @remote.description, name: @remote.name } }
    end

    assert_redirected_to remote_url(Remote.last)
  end

  test "should show remote" do
    get remote_url(@remote)
    assert_response :success
  end

  test "should get edit" do
    get edit_remote_url(@remote)
    assert_response :success
  end

  test "should update remote" do
    patch remote_url(@remote), params: { remote: { description: @remote.description, name: @remote.name } }
    assert_redirected_to remote_url(@remote)
  end

  test "should destroy remote" do
    assert_difference('Remote.count', -1) do
      delete remote_url(@remote)
    end

    assert_redirected_to remotes_url
  end
end
