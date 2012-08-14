require 'test_helper'

class NamespaceControllerTest < ActionController::TestCase
  test "should get Admin" do
    get :Admin
    assert_response :success
  end

  test "should get About" do
    get :About
    assert_response :success
  end

end
