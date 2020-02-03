require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "layout links" do
    get root_path
    assert_template 'posts/index'
    assert_select "a[href=?]", stats_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", root_path
  end
end
