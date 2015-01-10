require 'test_helper'
class SiteLayoutTest < ActionDispatch::IntegrationTest
 test "links on home page" do
 	get root_path
 	assert_template 'static_pages/home'
 	assert_select "a[href=?]", root_path
 	assert_select "a[href=?]", images_path
 	assert_select "a[href=?]", cv_path
 	assert_select "a[href=?]", contact_path
 end
 test "links on contact page" do
 	get contact_path
 	assert_template 'static_pages/contact'
 	assert_select "a[href=?]", root_path
 	assert_select "a[href=?]", images_path
 	assert_select "a[href=?]", cv_path
 	assert_select "a[href=?]", contact_path
 end
 test "links on cv page" do
 	get cv_path
 	assert_template 'static_pages/cv'
 	assert_select "a[href=?]", root_path
 	assert_select "a[href=?]", images_path
 	assert_select "a[href=?]", cv_path
 	assert_select "a[href=?]", contact_path
 end
 test "links on images page" do
 	get images_path
 	assert_template 'static_pages/images'
 	assert_select "a[href=?]", root_path
 	assert_select "a[href=?]", images_path
 	assert_select "a[href=?]", cv_path
 	assert_select "a[href=?]", contact_path
 end
 test "links on maintenance page" do
 	get maintenance_path
 	assert_template 'static_pages/maintenance'
 end
end
