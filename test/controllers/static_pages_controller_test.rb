require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get cv" do
    get :cv
    assert_response :success
  end

  test "should get maintenance" do
    get :maintenance
    assert_response :success
  end

  test "should get images" do
    get :images
    assert_response :success
  end

end
