require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "should get name" do
    get :name
    assert_response :success
  end

  test "should get photo" do
    get :photo
    assert_response :success
  end

end
