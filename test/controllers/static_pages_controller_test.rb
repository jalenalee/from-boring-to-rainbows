require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get about_url
    assert_response :success
    assert_select "title", "Jalena'a Blob"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get current date" do
    get root_url
    assert_response :success
    assert_select ".date", "2020" 

end
