require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get create_intro" do
    get :create_intro
    assert_response :success
  end

  test "should get create_canvas" do
    get :create_canvas
    assert_response :success
  end

  test "should get create_details" do
    get :create_details
    assert_response :success
  end

  test "should get create_confirm" do
    get :create_confirm
    assert_response :success
  end

  test "should get create_preview" do
    get :create_preview
    assert_response :success
  end

  test "should get entry" do
    get :entry
    assert_response :success
  end

  test "should get vote_confirmation" do
    get :vote_confirmation
    assert_response :success
  end

  test "should get gallery" do
    get :gallery
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get naked_world" do
    get :naked_world
    assert_response :success
  end

end
