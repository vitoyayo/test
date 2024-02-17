require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get index2" do
    get users_index2_url
    assert_response :success
  end
end
