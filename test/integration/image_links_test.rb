require 'test_helper'

class ImageLinksTest < ActionDispatch::IntegrationTest
  def setup
    @image = images(:one)
  end

  test "image links to image page" do
    get images_path
    assert_template 'images/index'
    assert_select "a[href=?]", image_path(@image), count: 1
  end

  test "image page has edit link" do
    get image_path(@image)
    assert_template 'images/show'
    assert_select "a[href=?]", edit_image_path(@image), count: 1
  end

  test "edit image updates image" do
    get edit_image_path(@image)
    assert_template 'images/edit'
    title = "test"
    patch image_path(@image), image: { title: title, }
    assert_redirected_to @image
    @image.reload
    assert_equal @image.title, title
  end

  test "image page has delete link" do
    get image_path(@image)
    assert_template 'images/show'
    assert_select "a[href=?]", image_path(@image), text: 'delete',
                                                  method: :delete
    assert_difference 'Image.count', -1 do
      delete image_path(@image)
    end
  end
end
