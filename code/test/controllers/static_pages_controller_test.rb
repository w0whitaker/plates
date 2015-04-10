require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  def setup
    @base_title = "William Whitaker"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "home | #{@base_title}"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "contact | #{@base_title}"
    opts = {controller: "static_pages", action: "contact"}
    assert_routing "/contact", opts
  end

  test "should get cv" do
    get :cv
    assert_response :success
    assert_select "title", "cv | #{@base_title}"
    opts = {controller: "static_pages", action: "cv"}
    assert_routing "/cv", opts
  end

  test "should get maintenance" do
    get :maintenance
    assert_response :success
    assert_select "title", "maintenance | #{@base_title}"
    opts = {controller: "static_pages", action: "maintenance"}
    assert_routing "/maintenance", opts
 end
end
