require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  test "should get aerospace" do
    get :aerospace
    assert_response :success
  end

end
