require 'test_helper'

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get projects" do
    get contact_projects_url
    assert_response :success
  end

  test "should get about" do
    get contact_about_url
    assert_response :success
  end

end
