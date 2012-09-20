require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get info" do
    get :info
    assert_response :success
  end

  test "should get runners" do
    get :runners
    assert_response :success
  end

  test "should get find" do
    get :find
    assert_response :success
  end

end
