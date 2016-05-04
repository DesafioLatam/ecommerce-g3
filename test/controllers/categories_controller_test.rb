require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get stats" do
    get categories_stats_url
    assert_response :success
  end

end
