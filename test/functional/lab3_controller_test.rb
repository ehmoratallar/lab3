require 'test_helper'

class Lab3ControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
