require 'test_helper'

class ImagesControllerTest < ActionController::TestCase
  def setup
    @base_title = "William Whitaker"
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "images | #{@base_title}"
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_select "title", "new | #{@base_title}"
  end
end
