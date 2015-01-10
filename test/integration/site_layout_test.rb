require 'test_helper'
class SiteLayoutTest < ActionDispatch::IntegrationTest
 test "site logo on home page" do
 	get root_path
 	assert_template 'static_pages/home'
 	assert_select "a[href=?]", root_path
 end
 test "site logo on contact page" do
 	get contact_path
 	assert_template 'static_pages/contact'
 	assert_select "a[href=?]", root_path
 end
 test "site logo on cv page" do
 	get cv_path
 	assert_template 'static_pages/cv'
 	assert_select "a[href=?]", root_path
 end
 test "site logo on images page" do
 	get images_path
 	assert_template 'static_pages/images'
 	assert_select "a[href=?]", root_path
 end
 test "site logo on maintenance page" do
 	get maintenance_path
 	assert_template 'static_pages/maintenance'
 	assert_select "a[href=?]", root_path
 end
end
