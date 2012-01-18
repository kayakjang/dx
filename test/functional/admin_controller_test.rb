require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get entries" do
    get :entries
    assert_response :success
  end

  test "should get flagged" do
    get :flagged
    assert_response :success
  end

  test "should get translations" do
    get :translations
    assert_response :success
  end

end
