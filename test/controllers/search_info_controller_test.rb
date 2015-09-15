require 'test_helper'

class SearchInfoControllerTest < ActionController::TestCase
  test "should get search_today" do
    get :search_today
    assert_response :success
  end

end
