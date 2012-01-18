require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get save_box" do
    get :save_box
    assert_response :success
  end

end
