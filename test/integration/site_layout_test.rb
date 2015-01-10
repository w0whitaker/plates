require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
 
 test "site logo on home page" do
 	get root_path
 	assert_template 'static_pages/home'
 	assert_select "div.logo"
 end

 test "site logo on home page" do
 	get root_path
 	assert_template 'static_pages/home'
 	assert_select "div.logo"
 end
 
 test "site logo on home page" do
 	get root_path
 	assert_template 'static_pages/home'
 	assert_select "div.logo"
 end

 test "site logo on home page" do
 	get root_path
 	assert_template 'static_pages/home'
 	assert_select "div.logo"
 end

 test "site logo on maintenance page" do
 	get maintenance_path
 	assert_template 'static_pages/maintenance'
 	assert_select "div.logo"
 end
  
end
