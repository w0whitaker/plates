require 'test_helper'

class ImageLinksTest < ActionDispatch::IntegrationTest
  def setup
    @image = images(:one)
  end

  test "image links to image page" do
    get images_path
    assert_select "a[href=?]", image_path(@image), count: 1
  end

  test "image page has edit link" do
    get image_path(@image)
    assert_select "a[href=?]", edit_image_path(@image), count: 1
  end

  test "image page has delete link" do
    get image_path(@image)
    assert_select "a[href=?]", image_path(@image), text: 'delete',
                                                  method: :delete
  end
end
