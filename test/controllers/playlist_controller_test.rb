require 'test_helper'

class PlaylistControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get playlist_new_url
    assert_response :success
  end

  test "should get create" do
    get playlist_create_url
    assert_response :success
  end

end
