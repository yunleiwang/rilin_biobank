require 'test_helper'

class SysAccountControllerTest < ActionController::TestCase
  test "should get sign_in" do
    get :sign_in
    assert_response :success
  end

  test "should get sign_out" do
    get :sign_out
    assert_response :success
  end

  test "should get change_password" do
    get :change_password
    assert_response :success
  end

end
