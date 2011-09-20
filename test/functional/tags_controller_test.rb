require 'test_helper'

class TagsControllerTest < ActionController::TestCase
  test "should get tag" do
    get :tag
    assert_response :success
  end

end
