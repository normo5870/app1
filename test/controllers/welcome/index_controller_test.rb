require 'test_helper'

class Welcome::IndexControllerTest < ActionController::TestCase
  test "should get update" do
    get :update
    assert_response :success
  end

end
