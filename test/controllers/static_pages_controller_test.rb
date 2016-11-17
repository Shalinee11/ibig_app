require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Tokio Marine iBig App"
  end

  test "should get login" do
    get login_path
    assert_response :success
    assert_select "title", "Log In | Tokio Marine iBig App"
  end

end