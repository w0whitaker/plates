require 'test_helper'

class ImagesControllerTest < ActionController::TestCase
  def setup
    @base_title = "William Whitaker"
    @user = users(:one) 
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "images | #{@base_title}"
  end
end
